.class public abstract LM2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM2/i;


# instance fields
.field public final G:I

.field public final H:I

.field public I:LL2/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, -0x80000000

    .line 5
    .line 6
    invoke-static {v0, v0}, LP2/o;->j(II)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iput v0, p0, LM2/c;->G:I

    .line 13
    .line 14
    iput v0, p0, LM2/c;->H:I

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string v1, "Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: -2147483648 and height: -2147483648"

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method


# virtual methods
.method public final b(LM2/h;)V
    .locals 2

    .line 1
    check-cast p1, LL2/h;

    .line 2
    .line 3
    iget v0, p0, LM2/c;->G:I

    .line 4
    .line 5
    iget v1, p0, LM2/c;->H:I

    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, LL2/h;->l(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final c(LL2/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, LM2/c;->I:LL2/c;

    .line 2
    .line 3
    return-void
.end method

.method public d(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final e()V
    .locals 0

    .line 1
    return-void
.end method

.method public final f(LM2/h;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final g(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final h()LL2/c;
    .locals 1

    .line 1
    iget-object v0, p0, LM2/c;->I:LL2/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDestroy()V
    .locals 0

    .line 1
    return-void
.end method
