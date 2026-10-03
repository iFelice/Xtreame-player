.class public final LX4/d;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# instance fields
.field public final synthetic a:LX4/e;


# direct methods
.method public constructor <init>(JLW4/b;)V
    .locals 2

    .line 1
    iput-object p3, p0, LX4/d;->a:LX4/e;

    .line 2
    .line 3
    const-wide/16 v0, 0x3e8

    .line 4
    .line 5
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, LX4/d;->a:LX4/e;

    .line 2
    .line 3
    check-cast v0, LW4/b;

    .line 4
    .line 5
    iget v1, v0, LW4/b;->a:I

    .line 6
    .line 7
    iget-object v0, v0, LW4/b;->b:LW4/c;

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    throw v0

    .line 17
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    throw v0

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onTick(J)V
    .locals 0

    .line 1
    return-void
.end method
