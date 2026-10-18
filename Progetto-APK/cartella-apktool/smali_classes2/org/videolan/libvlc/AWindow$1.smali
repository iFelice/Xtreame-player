.class Lorg/videolan/libvlc/AWindow$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/libvlc/AWindow;->setVideoLayout(IIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/libvlc/AWindow;

.field final synthetic val$height:I

.field final synthetic val$sarDen:I

.field final synthetic val$sarNum:I

.field final synthetic val$visibleHeight:I

.field final synthetic val$visibleWidth:I

.field final synthetic val$width:I


# direct methods
.method public constructor <init>(Lorg/videolan/libvlc/AWindow;IIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    .line 2
    .line 3
    iput p2, p0, Lorg/videolan/libvlc/AWindow$1;->val$width:I

    .line 4
    .line 5
    iput p3, p0, Lorg/videolan/libvlc/AWindow$1;->val$height:I

    .line 6
    .line 7
    iput p4, p0, Lorg/videolan/libvlc/AWindow$1;->val$visibleWidth:I

    .line 8
    .line 9
    iput p5, p0, Lorg/videolan/libvlc/AWindow$1;->val$visibleHeight:I

    .line 10
    .line 11
    iput p6, p0, Lorg/videolan/libvlc/AWindow$1;->val$sarNum:I

    .line 12
    .line 13
    iput p7, p0, Lorg/videolan/libvlc/AWindow$1;->val$sarDen:I

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$1400(Lorg/videolan/libvlc/AWindow;)Lorg/videolan/libvlc/interfaces/IVLCVout$OnNewVideoLayoutListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    .line 10
    .line 11
    invoke-static {v0}, Lorg/videolan/libvlc/AWindow;->access$1400(Lorg/videolan/libvlc/AWindow;)Lorg/videolan/libvlc/interfaces/IVLCVout$OnNewVideoLayoutListener;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lorg/videolan/libvlc/AWindow$1;->this$0:Lorg/videolan/libvlc/AWindow;

    .line 16
    .line 17
    iget v3, p0, Lorg/videolan/libvlc/AWindow$1;->val$width:I

    .line 18
    .line 19
    iget v4, p0, Lorg/videolan/libvlc/AWindow$1;->val$height:I

    .line 20
    .line 21
    iget v5, p0, Lorg/videolan/libvlc/AWindow$1;->val$visibleWidth:I

    .line 22
    .line 23
    iget v6, p0, Lorg/videolan/libvlc/AWindow$1;->val$visibleHeight:I

    .line 24
    .line 25
    iget v7, p0, Lorg/videolan/libvlc/AWindow$1;->val$sarNum:I

    .line 26
    .line 27
    iget v8, p0, Lorg/videolan/libvlc/AWindow$1;->val$sarDen:I

    .line 28
    .line 29
    invoke-interface/range {v1 .. v8}, Lorg/videolan/libvlc/interfaces/IVLCVout$OnNewVideoLayoutListener;->onNewVideoLayout(Lorg/videolan/libvlc/interfaces/IVLCVout;IIIIII)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
