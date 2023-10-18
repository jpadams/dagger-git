module go.dagger.io/dagger

go 1.18

require (
	cuelang.org/go v0.4.3
	github.com/KromDaniel/jonson v0.0.0-20180630143114-d2f9c3c389db
	github.com/Microsoft/go-winio v0.6.1
	github.com/charmbracelet/glamour v0.5.0
	github.com/containerd/console v1.0.3
	github.com/containerd/containerd v1.6.3-0.20220401172941-5ff8fce1fcc6
	github.com/docker/buildx v0.8.2
	github.com/docker/distribution v2.8.2+incompatible
	github.com/go-git/go-git/v5 v5.9.0
	github.com/gofrs/flock v0.8.1
	github.com/google/uuid v1.3.0
	github.com/hashicorp/go-version v1.6.0
	github.com/mattn/go-colorable v0.1.13
	github.com/mitchellh/colorstring v0.0.0-20190213212951-d06e56a500db
	github.com/mitchellh/go-homedir v1.1.0
	github.com/moby/buildkit v0.10.3
	github.com/morikuni/aec v1.0.0
	github.com/muesli/ansi v0.0.0-20211031195517-c9f0611b6c70
	github.com/opencontainers/go-digest v1.0.0
	github.com/opencontainers/image-spec v1.1.0-rc3
	github.com/pkg/browser v0.0.0-20210911075715-681adbf594b8
	github.com/rs/zerolog v1.27.0
	github.com/sergi/go-diff v1.2.0
	github.com/sirupsen/logrus v1.9.1
	github.com/spf13/cobra v1.7.0
	github.com/spf13/pflag v1.0.5
	github.com/spf13/viper v1.12.0
	github.com/stretchr/testify v1.8.0
	github.com/tonistiigi/fsutil v0.0.0-20220315205639-9ed612626da3
	github.com/tonistiigi/units v0.0.0-20180711220420-6950e57a87ea
	github.com/tonistiigi/vt100 v0.0.0-20210615222946-8066bb97264f
	//!!!! the version of go.opentelemetry.io/otel MUST be kept in sync with BuildKit's version !!!!
	// https://github.com/moby/buildkit/blob/v0.10.3/go.mod#L62-L68
	//
	// Otherwise we can introduce data races and other weird behaviour:
	// - (jaeger v1.6.0) data races https://github.com/dagger/dagger/runs/7359366602?check_suite_focus=true#step:8:1433
	// - (jaeger v1.8.0) conflicting Schema URLs https://github.com/dagger/dagger/runs/7358945187?check_suite_focus=true#step:8:2066
	//
	// These PRs have more context:
	// - TBD
	// - https://github.com/dagger/dagger/pull/2446#issuecomment-1126377411
	go.opentelemetry.io/otel v1.4.1
	go.opentelemetry.io/otel/exporters/jaeger v1.4.1
	go.opentelemetry.io/otel/sdk v1.4.1
	go.opentelemetry.io/otel/trace v1.4.1
	//!!!! the version of go.opentelemetry.io/otel MUST be kept in sync with BuildKit's version !!!!
	golang.org/x/mod v0.12.0
	golang.org/x/oauth2 v0.8.0
	golang.org/x/sync v0.3.0
	golang.org/x/term v0.12.0
	golang.org/x/time v0.3.0
	google.golang.org/grpc v1.48.0
	gopkg.in/yaml.v3 v3.0.1
)

require github.com/google/go-cmp v0.5.9

require github.com/dagger/cuelsp v0.3.4

require (
	dario.cat/mergo v1.0.0 // indirect
	github.com/ProtonMail/go-crypto v0.0.0-20230828082145-3c4c8a2d2371 // indirect
	github.com/acomagu/bufpipe v1.0.4 // indirect
	github.com/agext/levenshtein v1.2.3 // indirect
	github.com/alecthomas/chroma v0.10.0 // indirect
	github.com/armon/circbuf v0.0.0-20190214190532-5111143e8da2 // indirect
	github.com/aymanbagabas/go-osc52/v2 v2.0.1 // indirect
	github.com/aymerick/douceur v0.2.0 // indirect
	github.com/cenkalti/backoff/v4 v4.1.2 // indirect
	github.com/cloudflare/circl v1.3.3 // indirect
	github.com/cockroachdb/apd/v2 v2.0.2 // indirect
	github.com/containerd/continuity v0.2.3-0.20220330195504-d132b287edc8 // indirect
	github.com/containerd/ttrpc v1.1.0 // indirect
	github.com/containerd/typeurl v1.0.2 // indirect
	github.com/cyphar/filepath-securejoin v0.2.4 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/dlclark/regexp2 v1.4.1-0.20201116162257-a2a8dda75c91 // indirect
	github.com/docker/cli v24.0.0+incompatible // indirect
	github.com/docker/docker v24.0.0+incompatible // indirect
	github.com/docker/go-connections v0.4.0 // indirect
	github.com/docker/go-units v0.4.0 // indirect
	github.com/emicklei/proto v1.11.0 // indirect
	github.com/emirpasic/gods v1.18.1 // indirect
	github.com/fsnotify/fsnotify v1.6.0 // indirect
	github.com/go-git/gcfg v1.5.1-0.20230307220236-3a3c6141e376 // indirect
	github.com/go-git/go-billy/v5 v5.5.0 // indirect
	github.com/go-logr/logr v1.2.4 // indirect
	github.com/go-logr/stdr v1.2.2 // indirect
	github.com/gogo/googleapis v1.4.1 // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/golang/glog v1.0.0 // indirect
	github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da // indirect
	github.com/golang/protobuf v1.5.3 // indirect
	github.com/google/shlex v0.0.0-20191202100458-e7afc7fbc510 // indirect
	github.com/gorilla/css v1.0.0 // indirect
	github.com/gorilla/websocket v1.5.0 // indirect
	github.com/grpc-ecosystem/go-grpc-middleware v1.3.0 // indirect
	github.com/grpc-ecosystem/grpc-gateway v1.16.0 // indirect
	github.com/hashicorp/hcl v1.0.0 // indirect
	github.com/inconshreveable/mousetrap v1.1.0 // indirect
	github.com/jbenet/go-context v0.0.0-20150711004518-d14ea06fba99 // indirect
	github.com/kevinburke/ssh_config v1.2.0 // indirect
	github.com/klauspost/compress v1.17.0 // indirect
	github.com/lucasb-eyer/go-colorful v1.2.0 // indirect
	github.com/magiconair/properties v1.8.6 // indirect
	github.com/mattn/go-isatty v0.0.18 // indirect
	github.com/mattn/go-runewidth v0.0.14 // indirect
	github.com/microcosm-cc/bluemonday v1.0.17 // indirect
	github.com/mitchellh/go-wordwrap v1.0.1 // indirect
	github.com/mitchellh/mapstructure v1.5.0 // indirect
	github.com/moby/locker v1.0.1 // indirect
	github.com/moby/sys/signal v0.6.0 // indirect
	github.com/mpvl/unique v0.0.0-20150818121801-cbe035fff7de // indirect
	github.com/muesli/reflow v0.3.0 // indirect
	github.com/muesli/termenv v0.15.2 // indirect
	github.com/olekukonko/tablewriter v0.0.5 // indirect
	github.com/pelletier/go-toml v1.9.5 // indirect
	github.com/pelletier/go-toml/v2 v2.0.1 // indirect
	github.com/pjbgf/sha1cd v0.3.0 // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/protocolbuffers/txtpbfmt v0.0.0-20220608084003-fc78c767cd6a // indirect
	github.com/rivo/uniseg v0.2.0 // indirect
	github.com/skeema/knownhosts v1.2.0 // indirect
	github.com/sourcegraph/jsonrpc2 v0.1.0 // indirect
	github.com/spf13/afero v1.8.2 // indirect
	github.com/spf13/cast v1.5.0 // indirect
	github.com/spf13/jwalterweatherman v1.1.0 // indirect
	github.com/subosito/gotenv v1.3.0 // indirect
	github.com/tliron/glsp v0.1.2-0.20220705150211-aa8066a02133 // indirect
	github.com/xanzy/ssh-agent v0.3.3 // indirect
	github.com/yuin/goldmark v1.4.13 // indirect
	github.com/yuin/goldmark-emoji v1.0.1 // indirect
	go.lsp.dev/uri v0.3.0 // indirect
	go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc v0.29.0 // indirect
	go.opentelemetry.io/otel/exporters/otlp/internal/retry v1.4.1 // indirect
	go.opentelemetry.io/otel/exporters/otlp/otlptrace v1.4.1 // indirect
	go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc v1.4.1 // indirect
	go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracehttp v1.4.1 // indirect
	go.opentelemetry.io/proto/otlp v0.12.0 // indirect
	golang.org/x/crypto v0.13.0 // indirect
	golang.org/x/net v0.15.0 // indirect
	golang.org/x/sys v0.12.0 // indirect
	golang.org/x/text v0.13.0 // indirect
	golang.org/x/tools v0.13.0 // indirect
	golang.org/x/xerrors v0.0.0-20220907171357-04be3eba64a2 // indirect
	google.golang.org/appengine v1.6.7 // indirect
	google.golang.org/genproto v0.0.0-20220616135557-88e70c0c3a90 // indirect
	google.golang.org/protobuf v1.31.0 // indirect
	gopkg.in/ini.v1 v1.66.4 // indirect
	gopkg.in/warnings.v0 v0.1.2 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
)

replace (
	cuelang.org/go => github.com/dagger/cue v0.4.1-rc.1.0.20220121023213-66df011a52c2
	github.com/docker/docker => github.com/docker/docker v20.10.3-0.20220121014307-40bb9831756f+incompatible
	golang.org/x/oauth2 => github.com/dagger/oauth2 v0.0.0-20220802193326-c4e3911df5f5
)
