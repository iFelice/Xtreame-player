.class public Lorg/videolan/libvlc/interfaces/IMediaList$Event;
.super Lorg/videolan/libvlc/interfaces/AbstractVLCEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/interfaces/IMediaList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# static fields
.field public static final EndReached:I = 0x204

.field public static final ItemAdded:I = 0x200

.field public static final ItemDeleted:I = 0x202


# instance fields
.field public final index:I

.field public final media:Lorg/videolan/libvlc/interfaces/IMedia;

.field private final retain:Z


# direct methods
.method public constructor <init>(ILorg/videolan/libvlc/interfaces/IMedia;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/interfaces/AbstractVLCEvent;-><init>(I)V

    .line 2
    .line 3
    .line 4
    if-eqz p3, :cond_1

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-interface {p2}, Lorg/videolan/libvlc/interfaces/IVLCObject;->retain()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string p2, "invalid media reference"

    .line 18
    .line 19
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1

    .line 23
    :cond_1
    :goto_0
    iput-object p2, p0, Lorg/videolan/libvlc/interfaces/IMediaList$Event;->media:Lorg/videolan/libvlc/interfaces/IMedia;

    .line 24
    .line 25
    iput-boolean p3, p0, Lorg/videolan/libvlc/interfaces/IMediaList$Event;->retain:Z

    .line 26
    .line 27
    iput p4, p0, Lorg/videolan/libvlc/interfaces/IMediaList$Event;->index:I

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/videolan/libvlc/interfaces/IMediaList$Event;->retain:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/videolan/libvlc/interfaces/IMediaList$Event;->media:Lorg/videolan/libvlc/interfaces/IMedia;

    .line 6
    .line 7
    invoke-interface {v0}, Lorg/videolan/libvlc/interfaces/IVLCObject;->release()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
