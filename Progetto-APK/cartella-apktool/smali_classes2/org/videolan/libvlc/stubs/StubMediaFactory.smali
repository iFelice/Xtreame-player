.class public Lorg/videolan/libvlc/stubs/StubMediaFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/videolan/libvlc/interfaces/IMediaFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFromAssetFileDescriptor(Lorg/videolan/libvlc/interfaces/ILibVLC;Landroid/content/res/AssetFileDescriptor;)Lorg/videolan/libvlc/interfaces/IMedia;
    .locals 1

    .line 1
    new-instance v0, Lorg/videolan/libvlc/stubs/StubMedia;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lorg/videolan/libvlc/stubs/StubMedia;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;Landroid/content/res/AssetFileDescriptor;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getFromFileDescriptor(Lorg/videolan/libvlc/interfaces/ILibVLC;Ljava/io/FileDescriptor;)Lorg/videolan/libvlc/interfaces/IMedia;
    .locals 1

    .line 1
    new-instance v0, Lorg/videolan/libvlc/stubs/StubMedia;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lorg/videolan/libvlc/stubs/StubMedia;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;Ljava/io/FileDescriptor;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getFromLocalPath(Lorg/videolan/libvlc/interfaces/ILibVLC;Ljava/lang/String;)Lorg/videolan/libvlc/interfaces/IMedia;
    .locals 1

    .line 1
    new-instance v0, Lorg/videolan/libvlc/stubs/StubMedia;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lorg/videolan/libvlc/stubs/StubMedia;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getFromUri(Lorg/videolan/libvlc/interfaces/ILibVLC;Landroid/net/Uri;)Lorg/videolan/libvlc/interfaces/IMedia;
    .locals 1

    .line 1
    new-instance v0, Lorg/videolan/libvlc/stubs/StubMedia;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lorg/videolan/libvlc/stubs/StubMedia;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;Landroid/net/Uri;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
