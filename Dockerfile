FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04

# ── system deps ────────────────────────────────────────────────────────────────
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    git \
    wget \
    unzip \
    ca-certificates \
    build-essential \
    fzf \
    zsh \
    && rm -rf /var/lib/apt/lists/*

# ── Node.js 22 (required by Claude Code) ──────────────────────────────────────
RUN curl -fsSL https://deb.nodesource.com/setup_22.x | bash - \
    && apt-get install -y nodejs \
    && rm -rf /var/lib/apt/lists/*

# ── Claude Code CLI ────────────────────────────────────────────────────────────
RUN npm install -g @anthropic-ai/claude-code

# ── Python + markitdown ────────────────────────────────────────────────────────
RUN apt-get update && apt-get install -y --no-install-recommends python3 python3-pip \
    && rm -rf /var/lib/apt/lists/* \
    && pip3 install --break-system-packages 'markitdown[pdf]'

# ── oh-my-zsh ─────────────────────────────────────────────────────────────────
ENV SHELL=/usr/bin/zsh
ENV ZSH=/root/.oh-my-zsh

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

RUN git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions \
        ${ZSH_CUSTOM:-/root/.oh-my-zsh/custom}/plugins/zsh-autosuggestions \
    && git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting \
        ${ZSH_CUSTOM:-/root/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

RUN sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/' /root/.zshrc \
    && sed -i 's/plugins=(git)/plugins=(git fzf zsh-autosuggestions zsh-syntax-highlighting)/' /root/.zshrc \
    && echo '' >> /root/.zshrc \
    && echo 'export PATH="$HOME/.local/bin:$PATH"' >> /root/.zshrc \
    && echo '[ -f /usr/share/doc/fzf/examples/key-bindings.zsh ] && source /usr/share/doc/fzf/examples/key-bindings.zsh' >> /root/.zshrc \
    && echo '[ -f /usr/share/doc/fzf/examples/completion.zsh ]   && source /usr/share/doc/fzf/examples/completion.zsh' >> /root/.zshrc

RUN chsh -s /usr/bin/zsh root

# ── workspace ─────────────────────────────────────────────────────────────────
RUN mkdir -p /workspace
WORKDIR /workspace

CMD ["/usr/bin/zsh"]
