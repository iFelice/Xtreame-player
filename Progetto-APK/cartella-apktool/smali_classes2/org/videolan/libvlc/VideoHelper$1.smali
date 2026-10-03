.class Lorg/videolan/libvlc/VideoHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/libvlc/VideoHelper;->attachViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final runnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lorg/videolan/libvlc/VideoHelper;


# direct methods
.method public constructor <init>(Lorg/videolan/libvlc/VideoHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/videolan/libvlc/VideoHelper$1;->this$0:Lorg/videolan/libvlc/VideoHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lorg/videolan/libvlc/VideoHelper$1$1;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lorg/videolan/libvlc/VideoHelper$1$1;-><init>(Lorg/videolan/libvlc/VideoHelper$1;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lorg/videolan/libvlc/VideoHelper$1;->runnable:Ljava/lang/Runnable;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    if-ne p2, p6, :cond_0

    .line 2
    .line 3
    if-ne p3, p7, :cond_0

    .line 4
    .line 5
    if-ne p4, p8, :cond_0

    .line 6
    .line 7
    if-eq p5, p9, :cond_1

    .line 8
    .line 9
    :cond_0
    iget-object p1, p0, Lorg/videolan/libvlc/VideoHelper$1;->this$0:Lorg/videolan/libvlc/VideoHelper;

    .line 10
    .line 11
    invoke-static {p1}, Lorg/videolan/libvlc/VideoHelper;->access$200(Lorg/videolan/libvlc/VideoHelper;)Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p2, p0, Lorg/videolan/libvlc/VideoHelper$1;->runnable:Ljava/lang/Runnable;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lorg/videolan/libvlc/VideoHelper$1;->this$0:Lorg/videolan/libvlc/VideoHelper;

    .line 21
    .line 22
    invoke-static {p1}, Lorg/videolan/libvlc/VideoHelper;->access$200(Lorg/videolan/libvlc/VideoHelper;)Landroid/os/Handler;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object p2, p0, Lorg/videolan/libvlc/VideoHelper$1;->runnable:Ljava/lang/Runnable;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method
