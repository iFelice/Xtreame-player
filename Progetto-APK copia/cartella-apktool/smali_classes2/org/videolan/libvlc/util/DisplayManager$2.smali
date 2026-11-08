.class Lorg/videolan/libvlc/util/DisplayManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/util/DisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/libvlc/util/DisplayManager;


# direct methods
.method public constructor <init>(Lorg/videolan/libvlc/util/DisplayManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/videolan/libvlc/util/DisplayManager$2;->this$0:Lorg/videolan/libvlc/util/DisplayManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/util/DisplayManager$2;->this$0:Lorg/videolan/libvlc/util/DisplayManager;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/videolan/libvlc/util/DisplayManager;->access$200(Lorg/videolan/libvlc/util/DisplayManager;)Lorg/videolan/libvlc/util/DisplayManager$SecondaryDisplay;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lorg/videolan/libvlc/util/DisplayManager$2;->this$0:Lorg/videolan/libvlc/util/DisplayManager;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p1, v0}, Lorg/videolan/libvlc/util/DisplayManager;->access$202(Lorg/videolan/libvlc/util/DisplayManager;Lorg/videolan/libvlc/util/DisplayManager$SecondaryDisplay;)Lorg/videolan/libvlc/util/DisplayManager$SecondaryDisplay;

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lorg/videolan/libvlc/util/DisplayManager$2;->this$0:Lorg/videolan/libvlc/util/DisplayManager;

    .line 16
    .line 17
    const/4 v0, -0x1

    .line 18
    invoke-static {p1, v0}, Lorg/videolan/libvlc/util/DisplayManager;->access$302(Lorg/videolan/libvlc/util/DisplayManager;I)I

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
