.class public final synthetic LG0/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;


# instance fields
.field public final synthetic a:LG0/z;

.field public final synthetic b:LG0/e;


# direct methods
.method public synthetic constructor <init>(LG0/z;LG0/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LG0/y;->a:LG0/z;

    .line 5
    .line 6
    iput-object p2, p0, LG0/y;->b:LG0/e;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onEvent(Landroid/media/MediaDrm;[BII[B)V
    .locals 0

    .line 1
    iget-object p1, p0, LG0/y;->a:LG0/z;

    .line 2
    .line 3
    iget-object p4, p0, LG0/y;->b:LG0/e;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object p1, p4, LG0/e;->a:LG0/i;

    .line 9
    .line 10
    iget-object p1, p1, LG0/i;->d0:LG0/f;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
