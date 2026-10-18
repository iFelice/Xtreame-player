.class public Lorg/videolan/libvlc/MediaDiscoverer$Event;
.super Lorg/videolan/libvlc/interfaces/AbstractVLCEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/MediaDiscoverer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# static fields
.field public static final Ended:I = 0x501

.field public static final Started:I = 0x500


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/interfaces/AbstractVLCEvent;-><init>(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
