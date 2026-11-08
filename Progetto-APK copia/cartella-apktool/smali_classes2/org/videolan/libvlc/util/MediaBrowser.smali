.class public Lorg/videolan/libvlc/util/MediaBrowser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/util/MediaBrowser$EventListener;,
        Lorg/videolan/libvlc/util/MediaBrowser$Flag;
    }
.end annotation


# static fields
.field private static final IGNORE_LIST_OPTION:Ljava/lang/String; = ":ignore-filetypes="

.field private static final TAG:Ljava/lang/String; = "MediaBrowser"


# instance fields
.field private mAlive:Z

.field private mBrowserMediaList:Lorg/videolan/libvlc/interfaces/IMediaList;

.field private final mBrowserMediaListEventListener:Lorg/videolan/libvlc/interfaces/IMediaList$EventListener;

.field private final mDiscovererMediaArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/videolan/libvlc/interfaces/IMedia;",
            ">;"
        }
    .end annotation
.end field

.field private final mDiscovererMediaListEventListener:Lorg/videolan/libvlc/interfaces/IMediaList$EventListener;

.field private mEventListener:Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

.field private mFactory:Lorg/videolan/libvlc/interfaces/IMediaFactory;

.field private mHandler:Landroid/os/Handler;

.field private final mILibVlc:Lorg/videolan/libvlc/interfaces/ILibVLC;

.field private mIgnoreList:Ljava/lang/String;

.field private mMedia:Lorg/videolan/libvlc/interfaces/IMedia;

.field private final mMediaDiscoverers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/videolan/libvlc/MediaDiscoverer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/videolan/libvlc/interfaces/ILibVLC;Lorg/videolan/libvlc/util/MediaBrowser$EventListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mMediaDiscoverers:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mDiscovererMediaArray:Ljava/util/ArrayList;

    .line 4
    const-string v0, "db,nfo,ini,jpg,jpeg,ljpg,gif,png,pgm,pgmyuv,pbm,pam,tga,bmp,pnm,xpm,xcf,pcx,tif,tiff,lbm,sfv,txt,sub,idx,srt,ssa,ass,smi,utf,utf-8,rt,aqt,txt,usf,jss,cdg,psb,mpsub,mpl2,pjs,dks,stl,vtt,ttml"

    iput-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mIgnoreList:Ljava/lang/String;

    .line 5
    new-instance v0, Lorg/videolan/libvlc/util/MediaBrowser$1;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/util/MediaBrowser$1;-><init>(Lorg/videolan/libvlc/util/MediaBrowser;)V

    iput-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaListEventListener:Lorg/videolan/libvlc/interfaces/IMediaList$EventListener;

    .line 6
    new-instance v0, Lorg/videolan/libvlc/util/MediaBrowser$2;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/util/MediaBrowser$2;-><init>(Lorg/videolan/libvlc/util/MediaBrowser;)V

    iput-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mDiscovererMediaListEventListener:Lorg/videolan/libvlc/interfaces/IMediaList$EventListener;

    .line 7
    sget-object v0, Lorg/videolan/libvlc/interfaces/IMediaFactory;->factoryId:Ljava/lang/String;

    invoke-static {v0}, Lorg/videolan/libvlc/FactoryManager;->getFactory(Ljava/lang/String;)Lorg/videolan/libvlc/interfaces/IComponentFactory;

    move-result-object v0

    check-cast v0, Lorg/videolan/libvlc/interfaces/IMediaFactory;

    iput-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mFactory:Lorg/videolan/libvlc/interfaces/IMediaFactory;

    .line 8
    iput-object p1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mILibVlc:Lorg/videolan/libvlc/interfaces/ILibVLC;

    .line 9
    invoke-interface {p1}, Lorg/videolan/libvlc/interfaces/IVLCObject;->retain()Z

    .line 10
    iput-object p2, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mEventListener:Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mAlive:Z

    return-void
.end method

.method public constructor <init>(Lorg/videolan/libvlc/interfaces/ILibVLC;Lorg/videolan/libvlc/util/MediaBrowser$EventListener;Landroid/os/Handler;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lorg/videolan/libvlc/util/MediaBrowser;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;Lorg/videolan/libvlc/util/MediaBrowser$EventListener;)V

    .line 13
    iput-object p3, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lorg/videolan/libvlc/util/MediaBrowser;)Lorg/videolan/libvlc/util/MediaBrowser$EventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mEventListener:Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lorg/videolan/libvlc/util/MediaBrowser;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mDiscovererMediaArray:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method private reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mMediaDiscoverers:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lorg/videolan/libvlc/MediaDiscoverer;

    .line 18
    .line 19
    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaDiscoverer;->release()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mMediaDiscoverers:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mDiscovererMediaArray:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mMedia:Lorg/videolan/libvlc/interfaces/IMedia;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-interface {v0}, Lorg/videolan/libvlc/interfaces/IVLCObject;->release()V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mMedia:Lorg/videolan/libvlc/interfaces/IMedia;

    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaList:Lorg/videolan/libvlc/interfaces/IMediaList;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-interface {v0}, Lorg/videolan/libvlc/interfaces/IVLCObject;->release()V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaList:Lorg/videolan/libvlc/interfaces/IMediaList;

    .line 51
    .line 52
    :cond_2
    return-void
.end method

.method private startMediaDiscoverer(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lorg/videolan/libvlc/MediaDiscoverer;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mILibVlc:Lorg/videolan/libvlc/interfaces/ILibVLC;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Lorg/videolan/libvlc/MediaDiscoverer;-><init>(Lorg/videolan/libvlc/interfaces/ILibVLC;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mMediaDiscoverers:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaDiscoverer;->getMediaList()Lorg/videolan/libvlc/MediaList;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mDiscovererMediaListEventListener:Lorg/videolan/libvlc/interfaces/IMediaList$EventListener;

    .line 18
    .line 19
    iget-object v2, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mHandler:Landroid/os/Handler;

    .line 20
    .line 21
    invoke-virtual {p1, v1, v2}, Lorg/videolan/libvlc/MediaList;->setEventListener(Lorg/videolan/libvlc/interfaces/IMediaList$EventListener;Landroid/os/Handler;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaList;->release()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaDiscoverer;->isReleased()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaDiscoverer;->start()Z

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method


# virtual methods
.method public browse(Landroid/net/Uri;I)V
    .locals 2

    .line 4
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mFactory:Lorg/videolan/libvlc/interfaces/IMediaFactory;

    iget-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mILibVlc:Lorg/videolan/libvlc/interfaces/ILibVLC;

    invoke-interface {v0, v1, p1}, Lorg/videolan/libvlc/interfaces/IMediaFactory;->getFromUri(Lorg/videolan/libvlc/interfaces/ILibVLC;Landroid/net/Uri;)Lorg/videolan/libvlc/interfaces/IMedia;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/videolan/libvlc/util/MediaBrowser;->browse(Lorg/videolan/libvlc/interfaces/IMedia;I)V

    .line 6
    invoke-interface {p1}, Lorg/videolan/libvlc/interfaces/IVLCObject;->release()V

    return-void
.end method

.method public browse(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mFactory:Lorg/videolan/libvlc/interfaces/IMediaFactory;

    iget-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mILibVlc:Lorg/videolan/libvlc/interfaces/ILibVLC;

    invoke-interface {v0, v1, p1}, Lorg/videolan/libvlc/interfaces/IMediaFactory;->getFromLocalPath(Lorg/videolan/libvlc/interfaces/ILibVLC;Ljava/lang/String;)Lorg/videolan/libvlc/interfaces/IMedia;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/videolan/libvlc/util/MediaBrowser;->browse(Lorg/videolan/libvlc/interfaces/IMedia;I)V

    .line 3
    invoke-interface {p1}, Lorg/videolan/libvlc/interfaces/IVLCObject;->release()V

    return-void
.end method

.method public browse(Lorg/videolan/libvlc/interfaces/IMedia;I)V
    .locals 3

    .line 7
    invoke-interface {p1}, Lorg/videolan/libvlc/interfaces/IVLCObject;->retain()Z

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ":ignore-filetypes="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mIgnoreList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/videolan/libvlc/interfaces/IMedia;->addOption(Ljava/lang/String;)V

    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_0

    .line 9
    const-string v0, ":no-sub-autodetect-file"

    invoke-interface {p1, v0}, Lorg/videolan/libvlc/interfaces/IMedia;->addOption(Ljava/lang/String;)V

    :cond_0
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_1

    .line 10
    const-string v0, ":show-hiddenfiles"

    invoke-interface {p1, v0}, Lorg/videolan/libvlc/interfaces/IMedia;->addOption(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-eqz p2, :cond_2

    const/16 v0, 0x9

    .line 11
    :cond_2
    invoke-direct {p0}, Lorg/videolan/libvlc/util/MediaBrowser;->reset()V

    .line 12
    invoke-interface {p1}, Lorg/videolan/libvlc/interfaces/IMedia;->subItems()Lorg/videolan/libvlc/interfaces/IMediaList;

    move-result-object p2

    iput-object p2, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaList:Lorg/videolan/libvlc/interfaces/IMediaList;

    .line 13
    iget-object v1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaListEventListener:Lorg/videolan/libvlc/interfaces/IMediaList$EventListener;

    iget-object v2, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mHandler:Landroid/os/Handler;

    invoke-interface {p2, v1, v2}, Lorg/videolan/libvlc/interfaces/IMediaList;->setEventListener(Lorg/videolan/libvlc/interfaces/IMediaList$EventListener;Landroid/os/Handler;)V

    const/4 p2, 0x0

    .line 14
    invoke-interface {p1, v0, p2}, Lorg/videolan/libvlc/interfaces/IMedia;->parseAsync(II)Z

    .line 15
    iput-object p1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mMedia:Lorg/videolan/libvlc/interfaces/IMedia;

    return-void
.end method

.method public changeEventListener(Lorg/videolan/libvlc/util/MediaBrowser$EventListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/videolan/libvlc/util/MediaBrowser;->reset()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mEventListener:Lorg/videolan/libvlc/util/MediaBrowser$EventListener;

    .line 5
    .line 6
    return-void
.end method

.method public discoverNetworkShares()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lorg/videolan/libvlc/util/MediaBrowser;->reset()V

    .line 2
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mILibVlc:Lorg/videolan/libvlc/interfaces/ILibVLC;

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1}, Lorg/videolan/libvlc/MediaDiscoverer;->list(Lorg/videolan/libvlc/interfaces/ILibVLC;I)[Lorg/videolan/libvlc/MediaDiscoverer$Description;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "starting "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lorg/videolan/libvlc/MediaDiscoverer$Description;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " discover ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lorg/videolan/libvlc/MediaDiscoverer$Description;->longName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MediaBrowser"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v3, v3, Lorg/videolan/libvlc/MediaDiscoverer$Description;->name:Ljava/lang/String;

    invoke-direct {p0, v3}, Lorg/videolan/libvlc/util/MediaBrowser;->startMediaDiscoverer(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public discoverNetworkShares(Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lorg/videolan/libvlc/util/MediaBrowser;->reset()V

    .line 8
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/util/MediaBrowser;->startMediaDiscoverer(Ljava/lang/String;)V

    return-void
.end method

.method public getMediaAt(I)Lorg/videolan/libvlc/interfaces/IMedia;
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/videolan/libvlc/util/MediaBrowser;->getMediaCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ge p1, v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaList:Lorg/videolan/libvlc/interfaces/IMediaList;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0, p1}, Lorg/videolan/libvlc/interfaces/IMediaList;->getMediaAt(I)Lorg/videolan/libvlc/interfaces/IMedia;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mDiscovererMediaArray:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lorg/videolan/libvlc/interfaces/IMedia;

    .line 25
    .line 26
    :goto_0
    invoke-interface {p1}, Lorg/videolan/libvlc/interfaces/IVLCObject;->retain()Z

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public getMediaCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mBrowserMediaList:Lorg/videolan/libvlc/interfaces/IMediaList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lorg/videolan/libvlc/interfaces/IMediaList;->getCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mDiscovererMediaArray:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    :goto_0
    return v0
.end method

.method public release()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/videolan/libvlc/util/MediaBrowser;->reset()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mAlive:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mILibVlc:Lorg/videolan/libvlc/interfaces/ILibVLC;

    .line 9
    .line 10
    invoke-interface {v0}, Lorg/videolan/libvlc/interfaces/IVLCObject;->release()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mAlive:Z

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v1, "MediaBrowser released more than one time"

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

.method public setIgnoreFileTypes(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/videolan/libvlc/util/MediaBrowser;->mIgnoreList:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
