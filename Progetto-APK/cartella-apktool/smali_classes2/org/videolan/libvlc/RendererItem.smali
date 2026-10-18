.class public Lorg/videolan/libvlc/RendererItem;
.super Lorg/videolan/libvlc/VLCObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/RendererItem$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/videolan/libvlc/VLCObject<",
        "Lorg/videolan/libvlc/RendererItem$Event;",
        ">;"
    }
.end annotation


# static fields
.field public static final LIBVLC_RENDERER_CAN_AUDIO:I = 0x1

.field public static final LIBVLC_RENDERER_CAN_VIDEO:I = 0x2


# instance fields
.field public final displayName:Ljava/lang/String;

.field final flags:I

.field final iconUrl:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field private final ref:J

.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/videolan/libvlc/VLCObject;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x2d

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iput-object p1, p0, Lorg/videolan/libvlc/RendererItem;->name:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v2, -0x1

    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/16 v1, 0x20

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    iput-object p1, p0, Lorg/videolan/libvlc/RendererItem;->displayName:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p2, p0, Lorg/videolan/libvlc/RendererItem;->type:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p3, p0, Lorg/videolan/libvlc/RendererItem;->iconUrl:Ljava/lang/String;

    .line 27
    .line 28
    iput p4, p0, Lorg/videolan/libvlc/RendererItem;->flags:I

    .line 29
    .line 30
    iput-wide p5, p0, Lorg/videolan/libvlc/RendererItem;->ref:J

    .line 31
    .line 32
    return-void
.end method

.method private native nativeReleaseItem()V
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lorg/videolan/libvlc/RendererItem;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lorg/videolan/libvlc/RendererItem;->ref:J

    .line 6
    .line 7
    check-cast p1, Lorg/videolan/libvlc/RendererItem;

    .line 8
    .line 9
    iget-wide v2, p1, Lorg/videolan/libvlc/RendererItem;->ref:J

    .line 10
    .line 11
    cmp-long p1, v0, v2

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1
.end method

.method public bridge synthetic getInstance()J
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/videolan/libvlc/VLCObject;->getInstance()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public bridge synthetic getLibVLC()Lorg/videolan/libvlc/interfaces/ILibVLC;
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/videolan/libvlc/VLCObject;->getLibVLC()Lorg/videolan/libvlc/interfaces/ILibVLC;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic isReleased()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/videolan/libvlc/VLCObject;->isReleased()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public onEventNative(IJJFLjava/lang/String;)Lorg/videolan/libvlc/RendererItem$Event;
    .locals 0

    .line 2
    new-instance p2, Lorg/videolan/libvlc/RendererItem$Event;

    invoke-direct {p2, p1}, Lorg/videolan/libvlc/RendererItem$Event;-><init>(I)V

    return-object p2
.end method

.method public bridge synthetic onEventNative(IJJFLjava/lang/String;)Lorg/videolan/libvlc/interfaces/AbstractVLCEvent;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p7}, Lorg/videolan/libvlc/RendererItem;->onEventNative(IJJFLjava/lang/String;)Lorg/videolan/libvlc/RendererItem$Event;

    move-result-object p1

    return-object p1
.end method

.method public onReleaseNative()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/videolan/libvlc/RendererItem;->nativeReleaseItem()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
