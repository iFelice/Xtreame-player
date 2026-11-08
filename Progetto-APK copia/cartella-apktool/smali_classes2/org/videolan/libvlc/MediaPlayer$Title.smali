.class public Lorg/videolan/libvlc/MediaPlayer$Title;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Title"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/MediaPlayer$Title$Flags;
    }
.end annotation


# instance fields
.field public final duration:J

.field private final flags:I

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lorg/videolan/libvlc/MediaPlayer$Title;->duration:J

    .line 5
    .line 6
    iput-object p3, p0, Lorg/videolan/libvlc/MediaPlayer$Title;->name:Ljava/lang/String;

    .line 7
    .line 8
    iput p4, p0, Lorg/videolan/libvlc/MediaPlayer$Title;->flags:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public isInteractive()Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/videolan/libvlc/MediaPlayer$Title;->flags:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isMenu()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/videolan/libvlc/MediaPlayer$Title;->flags:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    return v1
.end method
