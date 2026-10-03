.class public final LO5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field public final synthetic G:LO5/g;


# direct methods
.method public constructor <init>(LO5/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LO5/c;->G:LO5/g;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, LO5/c;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    new-instance p1, LO5/t;

    .line 2
    .line 3
    invoke-direct {p1, p2, p3}, LO5/t;-><init>(II)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, LO5/c;->G:LO5/g;

    .line 7
    .line 8
    iput-object p1, p2, LO5/g;->V:LO5/t;

    .line 9
    .line 10
    invoke-virtual {p2}, LO5/g;->f()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    return-void
.end method
