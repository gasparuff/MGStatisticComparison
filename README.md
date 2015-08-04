# MGStatisticComparison
This View can be used to compare different statistics. I have used this for an App where I was showing statistics for specific Soccer Matches.

Use like this:

    var statisticView = MatchDetailStatisticSingleView(frame: CGRectMake(CGFloat(0), 0, self.contentView.frame.size.width, CGFloat(singleStatisticHeight)), leftValue: 40, rightValue: 68, title: "Ballbesitz")
    self.statisticsContainerView.addSubview(statisticView)
