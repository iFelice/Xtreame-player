.class public final LO5/s;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:LB0/w0;


# direct methods
.method public constructor <init>(LB0/w0;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, LO5/s;->a:LB0/w0;

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p2, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onOrientationChanged(I)V
    .locals 3

    .line 1
    iget-object p1, p0, LO5/s;->a:LB0/w0;

    .line 2
    .line 3
    iget-object v0, p1, LB0/w0;->I:Ljava/lang/Object;

    .line 4
    .line 5
    move-object v1, v0

    .line 6
    check-cast v1, Landroid/view/WindowManager;

    .line 7
    .line 8
    iget-object v2, p1, LB0/w0;->K:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v2, LZ3/o;

    .line 11
    .line 12
    check-cast v0, Landroid/view/WindowManager;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget v1, p1, LB0/w0;->H:I

    .line 27
    .line 28
    if-eq v0, v1, :cond_0

    .line 29
    .line 30
    iput v0, p1, LB0/w0;->H:I

    .line 31
    .line 32
    iget-object p1, v2, LZ3/o;->H:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, LO5/g;

    .line 35
    .line 36
    iget-object p1, p1, LO5/g;->I:Landroid/os/Handler;

    .line 37
    .line 38
    new-instance v0, Lf5/a;

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    invoke-direct {v0, v2, v1}, Lf5/a;-><init>(Ljava/lang/Object;I)V

    .line 42
    .line 43
    .line 44
    const-wide/16 v1, 0xfa

    .line 45
    .line 46
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method
