.class public final synthetic LZ3/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:LB0/y;

.field public final synthetic I:LZ3/a0;


# direct methods
.method public synthetic constructor <init>(LB0/y;LZ3/a0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, LZ3/f0;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LZ3/f0;->H:LB0/y;

    .line 7
    .line 8
    iput-object p2, p0, LZ3/f0;->I:LZ3/a0;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, LZ3/f0;->G:I

    .line 2
    .line 3
    iget-object v1, p0, LZ3/f0;->H:LB0/y;

    .line 4
    .line 5
    iget-object v2, p0, LZ3/f0;->I:LZ3/a0;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2}, LZ3/a0;->a()LK/k;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, LB0/y;->a(LK/k;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    invoke-virtual {v2}, LZ3/a0;->a()LK/k;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, LB0/y;->a(LK/k;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
