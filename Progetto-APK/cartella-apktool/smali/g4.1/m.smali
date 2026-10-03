.class public final Lg4/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg4/p;
.implements Lg4/f;
.implements Lg4/e;
.implements Lg4/c;


# instance fields
.field public final synthetic G:I

.field public final H:Ljava/util/concurrent/Executor;

.field public final I:Lg4/b;

.field public final J:Lg4/r;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Lg4/b;Lg4/r;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Lg4/m;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lg4/m;->H:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    iput-object p2, p0, Lg4/m;->I:Lg4/b;

    .line 9
    .line 10
    iput-object p3, p0, Lg4/m;->J:Lg4/r;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lg4/h;)V
    .locals 3

    .line 1
    iget v0, p0, Lg4/m;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lg4/m;->H:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, LK3/V;

    .line 9
    .line 10
    const/16 v2, 0x15

    .line 11
    .line 12
    invoke-direct {v0, v2, p0, p1}, LK3/V;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    new-instance v0, LK3/V;

    .line 20
    .line 21
    const/16 v2, 0x14

    .line 22
    .line 23
    invoke-direct {v0, v2, p0, p1}, LK3/V;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg4/m;->J:Lg4/r;

    .line 2
    .line 3
    invoke-virtual {v0}, Lg4/r;->l()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg4/m;->J:Lg4/r;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lg4/r;->j(Ljava/lang/Exception;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg4/m;->J:Lg4/r;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lg4/r;->k(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
