.class Lorg/videolan/libvlc/VideoHelper$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/VideoHelper$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/videolan/libvlc/VideoHelper$1;


# direct methods
.method public constructor <init>(Lorg/videolan/libvlc/VideoHelper$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/videolan/libvlc/VideoHelper$1$1;->this$1:Lorg/videolan/libvlc/VideoHelper$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/VideoHelper$1$1;->this$1:Lorg/videolan/libvlc/VideoHelper$1;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/videolan/libvlc/VideoHelper$1;->this$0:Lorg/videolan/libvlc/VideoHelper;

    .line 4
    .line 5
    invoke-static {v0}, Lorg/videolan/libvlc/VideoHelper;->access$000(Lorg/videolan/libvlc/VideoHelper;)Landroid/widget/FrameLayout;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/videolan/libvlc/VideoHelper$1$1;->this$1:Lorg/videolan/libvlc/VideoHelper$1;

    .line 12
    .line 13
    iget-object v0, v0, Lorg/videolan/libvlc/VideoHelper$1;->this$0:Lorg/videolan/libvlc/VideoHelper;

    .line 14
    .line 15
    invoke-static {v0}, Lorg/videolan/libvlc/VideoHelper;->access$100(Lorg/videolan/libvlc/VideoHelper;)Landroid/view/View$OnLayoutChangeListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lorg/videolan/libvlc/VideoHelper$1$1;->this$1:Lorg/videolan/libvlc/VideoHelper$1;

    .line 22
    .line 23
    iget-object v0, v0, Lorg/videolan/libvlc/VideoHelper$1;->this$0:Lorg/videolan/libvlc/VideoHelper;

    .line 24
    .line 25
    invoke-virtual {v0}, Lorg/videolan/libvlc/VideoHelper;->updateVideoSurfaces()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
