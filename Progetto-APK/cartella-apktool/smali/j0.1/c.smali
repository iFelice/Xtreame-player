.class public final Lj0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/a;


# instance fields
.field public G:I

.field public H:I

.field public I:I

.field public J:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput v1, p0, Lj0/c;->G:I

    .line 4
    iput v1, p0, Lj0/c;->H:I

    .line 5
    iput v1, p0, Lj0/c;->I:I

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lj0/c;->J:I

    return-void

    .line 7
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lj0/c;->G:I

    iput v1, p0, Lj0/c;->H:I

    iput v1, p0, Lj0/c;->I:I

    const/16 p1, 0x20

    iput p1, p0, Lj0/c;->J:I

    return-void

    .line 8
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lj0/c;->G:I

    .line 11
    iput p2, p0, Lj0/c;->H:I

    .line 12
    iput p3, p0, Lj0/c;->I:I

    .line 13
    iput p4, p0, Lj0/c;->J:I

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p1, v1, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lj0/c;->G:I

    .line 6
    .line 7
    iget v2, p0, Lj0/c;->H:I

    .line 8
    .line 9
    sub-int/2addr p1, v2

    .line 10
    if-le p1, v1, :cond_1

    .line 11
    .line 12
    :goto_0
    const/4 v0, 0x1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget p1, p0, Lj0/c;->I:I

    .line 15
    .line 16
    iget v2, p0, Lj0/c;->J:I

    .line 17
    .line 18
    sub-int/2addr p1, v2

    .line 19
    if-le p1, v1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    :goto_1
    return v0
.end method

.method public final b(LO1/c0;)V
    .locals 1

    .line 1
    iget-object p1, p1, LO1/c0;->G:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lj0/c;->G:I

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lj0/c;->H:I

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lj0/c;->I:I

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iput p1, p0, Lj0/c;->J:I

    .line 26
    .line 27
    return-void
.end method

.method public final build()Landroidx/media/AudioAttributesImpl;
    .locals 5

    .line 1
    new-instance v0, Landroidx/media/AudioAttributesImplBase;

    .line 2
    .line 3
    iget v1, p0, Lj0/c;->H:I

    .line 4
    .line 5
    iget v2, p0, Lj0/c;->I:I

    .line 6
    .line 7
    iget v3, p0, Lj0/c;->G:I

    .line 8
    .line 9
    iget v4, p0, Lj0/c;->J:I

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput v1, v0, Landroidx/media/AudioAttributesImplBase;->b:I

    .line 15
    .line 16
    iput v2, v0, Landroidx/media/AudioAttributesImplBase;->c:I

    .line 17
    .line 18
    iput v3, v0, Landroidx/media/AudioAttributesImplBase;->a:I

    .line 19
    .line 20
    iput v4, v0, Landroidx/media/AudioAttributesImplBase;->d:I

    .line 21
    .line 22
    return-object v0
.end method
