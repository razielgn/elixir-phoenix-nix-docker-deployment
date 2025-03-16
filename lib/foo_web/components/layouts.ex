defmodule FooWeb.Layouts do
  @moduledoc """
  This module holds different layouts used by your application.

  See the `layouts` directory for all templates available.
  The "root" layout is a skeleton rendered as part of the
  application router. The "app" layout is set as the default
  layout on both `use FooWeb, :controller` and
  `use FooWeb, :live_view`.
  """
  use FooWeb, :html

  embed_templates "layouts/*"
end
