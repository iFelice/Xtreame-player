.class public final synthetic LA0/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field public final synthetic G:LA0/B;

.field public final synthetic H:LA0/h0;


# direct methods
.method public synthetic constructor <init>(LA0/B;LA0/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LA0/A;->G:LA0/B;

    .line 5
    .line 6
    iput-object p2, p0, LA0/A;->H:LA0/h0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1
    iget-object p1, p0, LA0/A;->G:LA0/B;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, LA0/z;

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    invoke-direct {v0, p1, v1}, LA0/z;-><init>(LA0/B;I)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iget-object v1, p0, LA0/A;->H:LA0/h0;

    .line 14
    .line 15
    invoke-virtual {v1, v0, p1}, LA0/h0;->f(LA0/g0;Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
