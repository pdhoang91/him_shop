{application,kafi_wealth,
    [{compile_env,[{kafi_wealth,['Elixir.KafiWealthWeb.Gettext'],error}]},
     {applications,
         [kernel,stdlib,elixir,logger,runtime_tools,phoenix,phoenix_ecto,
          ecto_sql,postgrex,phoenix_html,phoenix_live_reload,
          phoenix_live_view,phoenix_live_dashboard,esbuild,swoosh,
          telemetry_metrics,telemetry_poller,gettext,jason,plug_cowboy]},
     {description,"kafi_wealth"},
     {modules,
         ['Elixir.KafiWealth','Elixir.KafiWealth.Application',
          'Elixir.KafiWealth.Mailer','Elixir.KafiWealth.Repo',
          'Elixir.KafiWealth.Timeline','Elixir.KafiWealth.Timeline.Post',
          'Elixir.KafiWealth.Users','Elixir.KafiWealth.Users.User',
          'Elixir.KafiWealthWeb','Elixir.KafiWealthWeb.Endpoint',
          'Elixir.KafiWealthWeb.ErrorHelpers',
          'Elixir.KafiWealthWeb.ErrorView','Elixir.KafiWealthWeb.Gettext',
          'Elixir.KafiWealthWeb.HomeController',
          'Elixir.KafiWealthWeb.HomeLive','Elixir.KafiWealthWeb.ImageLive',
          'Elixir.KafiWealthWeb.LayoutView',
          'Elixir.KafiWealthWeb.LiveHelpers',
          'Elixir.KafiWealthWeb.ModalComponent',
          'Elixir.KafiWealthWeb.PageController',
          'Elixir.KafiWealthWeb.PageLive','Elixir.KafiWealthWeb.PageView',
          'Elixir.KafiWealthWeb.PostLive.FormComponent',
          'Elixir.KafiWealthWeb.PostLive.Index',
          'Elixir.KafiWealthWeb.PostLive.PostComponent',
          'Elixir.KafiWealthWeb.PostLive.Show',
          'Elixir.KafiWealthWeb.Presence','Elixir.KafiWealthWeb.Router',
          'Elixir.KafiWealthWeb.Router.Helpers',
          'Elixir.KafiWealthWeb.SearchLive','Elixir.KafiWealthWeb.Telemetry',
          'Elixir.KafiWealthWeb.UserController',
          'Elixir.KafiWealthWeb.UserLive.Edit',
          'Elixir.KafiWealthWeb.UserLive.Index',
          'Elixir.KafiWealthWeb.UserLive.New',
          'Elixir.KafiWealthWeb.UserLive.Show']},
     {registered,[]},
     {vsn,"0.1.0"},
     {mod,{'Elixir.KafiWealth.Application',[]}}]}.