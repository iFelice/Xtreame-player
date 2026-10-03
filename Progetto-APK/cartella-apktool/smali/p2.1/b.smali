.class public final Lp2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic G:I

.field public final H:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lp2/b;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lp2/b;->H:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget v0, p0, Lp2/b;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lp2/b;->H:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Lc4/K0;

    .line 9
    .line 10
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lc4/l0;

    .line 13
    .line 14
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 15
    .line 16
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    check-cast v1, Ljava/util/concurrent/Executor;

    .line 24
    .line 25
    new-instance v0, La/f;

    .line 26
    .line 27
    const/16 v2, 0x13

    .line 28
    .line 29
    invoke-direct {v0, p1, v2}, La/f;-><init>(Ljava/lang/Object;I)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_1
    check-cast v1, Lm2/u;

    .line 37
    .line 38
    iget-object v0, v1, Lm2/u;->I:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Landroid/os/Handler;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
