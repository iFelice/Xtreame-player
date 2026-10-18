.class Lorg/videolan/libvlc/Dialog$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/libvlc/Dialog;->updateProgressFromNative(Lorg/videolan/libvlc/Dialog;FLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Lorg/videolan/libvlc/Dialog;

.field final synthetic val$position:F

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/videolan/libvlc/Dialog;FLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/videolan/libvlc/Dialog$6;->val$dialog:Lorg/videolan/libvlc/Dialog;

    .line 2
    .line 3
    iput p2, p0, Lorg/videolan/libvlc/Dialog$6;->val$position:F

    .line 4
    .line 5
    iput-object p3, p0, Lorg/videolan/libvlc/Dialog$6;->val$text:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/Dialog$6;->val$dialog:Lorg/videolan/libvlc/Dialog;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/videolan/libvlc/Dialog;->getType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lorg/videolan/libvlc/Dialog$6;->val$dialog:Lorg/videolan/libvlc/Dialog;

    .line 11
    .line 12
    check-cast v0, Lorg/videolan/libvlc/Dialog$ProgressDialog;

    .line 13
    .line 14
    iget v1, p0, Lorg/videolan/libvlc/Dialog$6;->val$position:F

    .line 15
    .line 16
    iget-object v2, p0, Lorg/videolan/libvlc/Dialog$6;->val$text:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Lorg/videolan/libvlc/Dialog$ProgressDialog;->access$500(Lorg/videolan/libvlc/Dialog$ProgressDialog;FLjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lorg/videolan/libvlc/Dialog;->access$100()Lorg/videolan/libvlc/Dialog$Callbacks;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-static {}, Lorg/videolan/libvlc/Dialog;->access$100()Lorg/videolan/libvlc/Dialog$Callbacks;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v1, v0}, Lorg/videolan/libvlc/Dialog$Callbacks;->onProgressUpdate(Lorg/videolan/libvlc/Dialog$ProgressDialog;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void

    .line 35
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    const-string v1, "dialog is not a progress dialog"

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0
.end method
