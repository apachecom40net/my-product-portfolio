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
# The base image already ships oh-my-zsh — skip the installer, just configure.
ENV SHELL=/usr/bin/zsh

RUN git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions \
        /root/.oh-my-zsh/custom/plugins/zsh-autosuggestions \
    && git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting \
        /root/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# Base image may use "devcontainers" or "robbyrussell" as default theme
RUN sed -i 's/ZSH_THEME="devcontainers"/ZSH_THEME="agnoster"/' /root/.zshrc; \
    sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/' /root/.zshrc; \
    sed -i 's/plugins=(git)/plugins=(git fzf zsh-autosuggestions zsh-syntax-highlighting)/' /root/.zshrc; \
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> /root/.zshrc; \
    echo '[ -f /usr/share/doc/fzf/examples/key-bindings.zsh ] && source /usr/share/doc/fzf/examples/key-bindings.zsh' >> /root/.zshrc; \
    echo '[ -f /usr/share/doc/fzf/examples/completion.zsh ]   && source /usr/share/doc/fzf/examples/completion.zsh' >> /root/.zshrc

# ── workspace ─────────────────────────────────────────────────────────────────
RUN mkdir -p /workspace
WORKDIR /workspace

CMD ["/usr/bin/zsh"]
