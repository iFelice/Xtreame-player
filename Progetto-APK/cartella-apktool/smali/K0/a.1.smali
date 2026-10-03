.class public final synthetic LK0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LU0/j;

.field public final synthetic c:LK0/l;


# direct methods
.method public synthetic constructor <init>(LK0/l;LU0/j;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, LK0/a;->a:I

    .line 5
    .line 6
    iput-object p1, p0, LK0/a;->c:LK0/l;

    .line 7
    .line 8
    iput-object p2, p0, LK0/a;->b:LU0/j;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 2

    .line 1
    iget p1, p0, LK0/a;->a:I

    .line 2
    .line 3
    const/4 p4, 0x0

    .line 4
    const/16 p5, 0x20

    .line 5
    .line 6
    const/16 v0, 0x1e

    .line 7
    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, LK0/a;->c:LK0/l;

    .line 12
    .line 13
    check-cast p1, LK0/A;

    .line 14
    .line 15
    iget-object v1, p0, LK0/a;->b:LU0/j;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    if-ge p1, v0, :cond_0

    .line 23
    .line 24
    iget-object p1, v1, LU0/j;->G:Landroid/os/Handler;

    .line 25
    .line 26
    shr-long v0, p2, p5

    .line 27
    .line 28
    long-to-int p5, v0

    .line 29
    long-to-int p3, p2

    .line 30
    invoke-static {p1, p4, p5, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v1, p2, p3}, LU0/j;->a(J)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void

    .line 42
    :pswitch_0
    iget-object p1, p0, LK0/a;->c:LK0/l;

    .line 43
    .line 44
    check-cast p1, LK0/b;

    .line 45
    .line 46
    iget-object v1, p0, LK0/a;->b:LU0/j;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 52
    .line 53
    if-ge p1, v0, :cond_1

    .line 54
    .line 55
    iget-object p1, v1, LU0/j;->G:Landroid/os/Handler;

    .line 56
    .line 57
    shr-long v0, p2, p5

    .line 58
    .line 59
    long-to-int p5, v0

    .line 60
    long-to-int p3, p2

    .line 61
    invoke-static {p1, p4, p5, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    invoke-virtual {v1, p2, p3}, LU0/j;->a(J)V

    .line 70
    .line 71
    .line 72
    :goto_1
    return-void

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
