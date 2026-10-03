.class public final LJ0/a;
.super Lw0/i;
.source "SourceFile"


# instance fields
.field public G:Landroid/graphics/Bitmap;

.field public final synthetic H:LJ0/b;


# direct methods
.method public constructor <init>(LJ0/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LJ0/a;->H:LJ0/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LJ0/a;->G:Landroid/graphics/Bitmap;

    .line 3
    .line 4
    invoke-super {p0}, Lw0/i;->clear()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final release()V
    .locals 1

    .line 1
    iget-object v0, p0, LJ0/a;->H:LJ0/b;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lw0/k;->releaseOutputBuffer(Lw0/i;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
