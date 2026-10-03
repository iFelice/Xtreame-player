.class public final Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;->b:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;->c:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;->d:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public build()LA0/v;
    .locals 5

    .line 1
    new-instance v0, LA0/v;

    .line 2
    .line 3
    iget-boolean v1, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;->b:Z

    .line 4
    .line 5
    xor-int/lit8 v1, v1, 0x1

    .line 6
    .line 7
    iget-boolean v2, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;->a:Z

    .line 8
    .line 9
    iget-boolean v3, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;->d:Z

    .line 10
    .line 11
    iget-boolean v4, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;->c:Z

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, v4, v3}, LA0/v;-><init>(ZZZZ)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public setEnableReplayableCache(Z)Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/effect/DefaultVideoFrameProcessor$Factory$Builder;->a:Z

    .line 2
    .line 3
    return-object p0
.end method
