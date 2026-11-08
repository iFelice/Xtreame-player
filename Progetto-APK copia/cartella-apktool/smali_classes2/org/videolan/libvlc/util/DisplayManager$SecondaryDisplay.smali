.class public Lorg/videolan/libvlc/util/DisplayManager$SecondaryDisplay;
.super Landroid/app/Presentation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/util/DisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SecondaryDisplay"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/SecondaryDisplay"


# instance fields
.field private mSubtitlesSurfaceView:Landroid/view/SurfaceView;

.field private mSurfaceFrame:Landroid/widget/FrameLayout;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field final synthetic this$0:Lorg/videolan/libvlc/util/DisplayManager;


# direct methods
.method public constructor <init>(Lorg/videolan/libvlc/util/DisplayManager;Landroid/content/Context;Landroid/view/Display;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/videolan/libvlc/util/DisplayManager$SecondaryDisplay;->this$0:Lorg/videolan/libvlc/util/DisplayManager;

    .line 2
    invoke-direct {p0, p2, p3}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    return-void
.end method

.method public constructor <init>(Lorg/videolan/libvlc/util/DisplayManager;Landroid/content/Context;Landroid/view/Display;I)V
    .locals 0

    .line 3
    iput-object p1, p0, Lorg/videolan/libvlc/util/DisplayManager$SecondaryDisplay;->this$0:Lorg/videolan/libvlc/util/DisplayManager;

    .line 4
    invoke-direct {p0, p2, p3, p4}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;I)V

    return-void
.end method


# virtual methods
.method public getSubtitlesSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/util/DisplayManager$SecondaryDisplay;->mSubtitlesSurfaceView:Landroid/view/SurfaceView;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSurfaceFrame()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/util/DisplayManager$SecondaryDisplay;->mSurfaceFrame:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/util/DisplayManager$SecondaryDisplay;->mSurfaceView:Landroid/view/SurfaceView;

    .line 2
    .line 3
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0e00fb

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    const p1, 0x7f0b0425

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/widget/FrameLayout;

    .line 18
    .line 19
    iput-object p1, p0, Lorg/videolan/libvlc/util/DisplayManager$SecondaryDisplay;->mSurfaceFrame:Landroid/widget/FrameLayout;

    .line 20
    .line 21
    const v0, 0x7f0b0424

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/view/SurfaceView;

    .line 29
    .line 30
    iput-object p1, p0, Lorg/videolan/libvlc/util/DisplayManager$SecondaryDisplay;->mSurfaceView:Landroid/view/SurfaceView;

    .line 31
    .line 32
    iget-object p1, p0, Lorg/videolan/libvlc/util/DisplayManager$SecondaryDisplay;->mSurfaceFrame:Landroid/widget/FrameLayout;

    .line 33
    .line 34
    const v0, 0x7f0b0426

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Landroid/view/SurfaceView;

    .line 42
    .line 43
    iput-object p1, p0, Lorg/videolan/libvlc/util/DisplayManager$SecondaryDisplay;->mSubtitlesSurfaceView:Landroid/view/SurfaceView;

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lorg/videolan/libvlc/util/DisplayManager$SecondaryDisplay;->mSubtitlesSurfaceView:Landroid/view/SurfaceView;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const/4 v0, -0x3

    .line 56
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
