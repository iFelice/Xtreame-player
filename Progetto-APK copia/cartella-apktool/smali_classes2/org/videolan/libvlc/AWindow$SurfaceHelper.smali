.class Lorg/videolan/libvlc/AWindow$SurfaceHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/AWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SurfaceHelper"
.end annotation


# instance fields
.field private final mId:I

.field private mSurface:Landroid/view/Surface;

.field private final mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private final mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

.field private final mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private final mSurfaceView:Landroid/view/SurfaceView;

.field private final mTextureView:Landroid/view/TextureView;

.field final synthetic this$0:Lorg/videolan/libvlc/AWindow;


# direct methods
.method private constructor <init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/Surface;Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance p1, Lorg/videolan/libvlc/AWindow$SurfaceHelper$1;

    invoke-direct {p1, p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper$1;-><init>(Lorg/videolan/libvlc/AWindow$SurfaceHelper;)V

    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 20
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->createSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object p1

    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 21
    iput p2, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mId:I

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceView:Landroid/view/SurfaceView;

    .line 23
    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    .line 24
    iput-object p4, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 25
    iput-object p3, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/Surface;Landroid/view/SurfaceHolder;Lorg/videolan/libvlc/AWindow$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;-><init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/Surface;Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method private constructor <init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/SurfaceView;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance p1, Lorg/videolan/libvlc/AWindow$SurfaceHelper$1;

    invoke-direct {p1, p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper$1;-><init>(Lorg/videolan/libvlc/AWindow$SurfaceHelper;)V

    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 6
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->createSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object p1

    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 7
    iput p2, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mId:I

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    .line 9
    iput-object p3, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceView:Landroid/view/SurfaceView;

    .line 10
    invoke-virtual {p3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/SurfaceView;Lorg/videolan/libvlc/AWindow$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;-><init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/SurfaceView;)V

    return-void
.end method

.method private constructor <init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/TextureView;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->this$0:Lorg/videolan/libvlc/AWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance p1, Lorg/videolan/libvlc/AWindow$SurfaceHelper$1;

    invoke-direct {p1, p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper$1;-><init>(Lorg/videolan/libvlc/AWindow$SurfaceHelper;)V

    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 13
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->createSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object p1

    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 14
    iput p2, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mId:I

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceView:Landroid/view/SurfaceView;

    .line 16
    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 17
    iput-object p3, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/TextureView;Lorg/videolan/libvlc/AWindow$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;-><init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/TextureView;)V

    return-void
.end method

.method public static synthetic access$300(Lorg/videolan/libvlc/AWindow$SurfaceHelper;)Landroid/view/SurfaceHolder;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lorg/videolan/libvlc/AWindow$SurfaceHelper;Landroid/view/Surface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->setSurface(Landroid/view/Surface;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private attachSurface()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    .line 11
    .line 12
    invoke-direct {p0, v0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->setSurface(Landroid/view/Surface;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private attachSurfaceView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 9
    .line 10
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-direct {p0, v0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->setSurface(Landroid/view/Surface;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private attachTextureView()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 17
    .line 18
    iget-object v2, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    iget-object v3, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    .line 25
    .line 26
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-interface {v1, v0, v2, v3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method private createSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;
    .locals 1

    .line 1
    new-instance v0, Lorg/videolan/libvlc/AWindow$SurfaceHelper$2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper$2;-><init>(Lorg/videolan/libvlc/AWindow$SurfaceHelper;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private releaseTextureView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method private setSurface(Landroid/view/Surface;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->this$0:Lorg/videolan/libvlc/AWindow;

    .line 8
    .line 9
    iget v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mId:I

    .line 10
    .line 11
    invoke-static {v0, v1}, Lorg/videolan/libvlc/AWindow;->access$000(Lorg/videolan/libvlc/AWindow;I)Landroid/view/Surface;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iput-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    .line 18
    .line 19
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->this$0:Lorg/videolan/libvlc/AWindow;

    .line 20
    .line 21
    iget v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mId:I

    .line 22
    .line 23
    invoke-static {v0, v1, p1}, Lorg/videolan/libvlc/AWindow;->access$100(Lorg/videolan/libvlc/AWindow;ILandroid/view/Surface;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->this$0:Lorg/videolan/libvlc/AWindow;

    .line 27
    .line 28
    invoke-static {p1}, Lorg/videolan/libvlc/AWindow;->access$200(Lorg/videolan/libvlc/AWindow;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public attach()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceView:Landroid/view/SurfaceView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->attachSurfaceView()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mTextureView:Landroid/view/TextureView;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->attachTextureView()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->attachSurface()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 28
    .line 29
    .line 30
    throw v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 2
    .line 3
    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceView:Landroid/view/SurfaceView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public release()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurface:Landroid/view/Surface;

    .line 3
    .line 4
    iget-object v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->this$0:Lorg/videolan/libvlc/AWindow;

    .line 5
    .line 6
    iget v2, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mId:I

    .line 7
    .line 8
    invoke-static {v1, v2, v0}, Lorg/videolan/libvlc/AWindow;->access$100(Lorg/videolan/libvlc/AWindow;ILandroid/view/Surface;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->releaseTextureView()V

    .line 21
    .line 22
    .line 23
    return-void
.end method
