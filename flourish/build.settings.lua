--
-- For more information on build.settings, see the Project Build Settings guide at:
-- https://docs.coronalabs.com/guide/distribution/buildSettings
--

settings =
{
  window = {
	defaultMode = "maximized",
    defaultViewWidth = 2160,
    defaultViewHeight = 3840,
    resizable = true,
    titleText = {
      default = "Flourish Demo"
    }
  },

	excludeFiles =
	{
		-- Exclude unnecessary files for each platform
		all = { "Icon.png", "Icon-*dpi.png", "Images.xcassets", },
		android = { "LaunchScreen.storyboardc", },
	},
}
