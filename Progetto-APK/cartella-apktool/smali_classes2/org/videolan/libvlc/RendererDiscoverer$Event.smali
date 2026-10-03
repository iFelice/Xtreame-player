.class public Lorg/videolan/libvlc/RendererDiscoverer$Event;
.super Lorg/videolan/libvlc/interfaces/AbstractVLCEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/RendererDiscoverer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# static fields
.field public static final ItemAdded:I = 0x502

.field public static final ItemDeleted:I = 0x503


# instance fields
.field private final item:Lorg/videolan/libvlc/RendererItem;


# direct methods
.method public constructor <init>(IJLorg/videolan/libvlc/RendererItem;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/videolan/libvlc/interfaces/AbstractVLCEvent;-><init>(IJ)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lorg/videolan/libvlc/RendererDiscoverer$Event;->item:Lorg/videolan/libvlc/RendererItem;

    .line 5
    .line 6
    invoke-virtual {p4}, Lorg/videolan/libvlc/VLCObject;->retain()Z

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public getItem()Lorg/videolan/libvlc/RendererItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/RendererDiscoverer$Event;->item:Lorg/videolan/libvlc/RendererItem;

    .line 2
    .line 3
    return-object v0
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/RendererDiscoverer$Event;->item:Lorg/videolan/libvlc/RendererItem;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/videolan/libvlc/VLCObject;->release()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lorg/videolan/libvlc/interfaces/AbstractVLCEvent;->release()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
