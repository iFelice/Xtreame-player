.class public final LB0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB0/e0;


# instance fields
.field public final G:LB0/J0;

.field public final H:LB0/n;

.field public I:LB0/h;

.field public J:LB0/e0;

.field public K:Z

.field public L:Z


# direct methods
.method public constructor <init>(LB0/n;Lp0/G;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LB0/o;->H:LB0/n;

    .line 5
    .line 6
    new-instance p1, LB0/J0;

    .line 7
    .line 8
    invoke-direct {p1, p2}, LB0/J0;-><init>(Lp0/G;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, LB0/o;->G:LB0/J0;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, LB0/o;->K:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(LB0/h;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, LB0/h;->getMediaClock()LB0/e0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, LB0/o;->J:LB0/e0;

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iput-object v0, p0, LB0/o;->J:LB0/e0;

    .line 14
    .line 15
    iput-object p1, p0, LB0/o;->I:LB0/h;

    .line 16
    .line 17
    iget-object p1, p0, LB0/o;->G:LB0/J0;

    .line 18
    .line 19
    iget-object p1, p1, LB0/J0;->K:Lm0/S;

    .line 20
    .line 21
    invoke-interface {v0, p1}, LB0/e0;->setPlaybackParameters(Lm0/S;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v0, "Multiple renderer media clocks enabled."

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, LB0/w;

    .line 33
    .line 34
    const/4 v1, 0x2

    .line 35
    const/16 v2, 0x3e8

    .line 36
    .line 37
    invoke-direct {v0, v1, p1, v2}, LB0/w;-><init>(ILjava/lang/Throwable;I)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method public final getPlaybackParameters()Lm0/S;
    .locals 1

    .line 1
    iget-object v0, p0, LB0/o;->J:LB0/e0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, LB0/e0;->getPlaybackParameters()Lm0/S;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, LB0/o;->G:LB0/J0;

    .line 11
    .line 12
    iget-object v0, v0, LB0/J0;->K:Lm0/S;

    .line 13
    .line 14
    :goto_0
    return-object v0
.end method

.method public final getPositionUs()J
    .locals 2

    .line 1
    iget-boolean v0, p0, LB0/o;->K:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LB0/o;->G:LB0/J0;

    .line 6
    .line 7
    invoke-virtual {v0}, LB0/J0;->getPositionUs()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, LB0/o;->J:LB0/e0;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, LB0/e0;->getPositionUs()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    :goto_0
    return-wide v0
.end method

.method public final hasSkippedSilenceSinceLastCall()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LB0/o;->K:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LB0/o;->G:LB0/J0;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, LB0/o;->J:LB0/e0;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, LB0/e0;->hasSkippedSilenceSinceLastCall()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    :goto_0
    return v0
.end method

.method public final setPlaybackParameters(Lm0/S;)V
    .locals 1

    .line 1
    iget-object v0, p0, LB0/o;->J:LB0/e0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, LB0/e0;->setPlaybackParameters(Lm0/S;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, LB0/o;->J:LB0/e0;

    .line 9
    .line 10
    invoke-interface {p1}, LB0/e0;->getPlaybackParameters()Lm0/S;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :cond_0
    iget-object v0, p0, LB0/o;->G:LB0/J0;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, LB0/J0;->setPlaybackParameters(Lm0/S;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
