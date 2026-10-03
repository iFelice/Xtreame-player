.class public abstract LO1/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LO1/z;->a:I

    iput-object p2, p0, LO1/z;->b:Ljava/lang/Object;

    iput-object p3, p0, LO1/z;->c:Ljava/lang/Object;

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/pal/h2;->d:Lcom/google/android/gms/internal/pal/h2;

    iget-object p1, p1, Lcom/google/android/gms/internal/pal/h2;->a:Lcom/google/android/gms/internal/pal/i2;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/pal/i2;->G:Ljava/io/Serializable;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(LO1/L;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 5
    iput v0, p0, LO1/z;->a:I

    .line 6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, LO1/z;->c:Ljava/lang/Object;

    .line 7
    iput-object p1, p0, LO1/z;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(LO1/L;I)LO1/y;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    new-instance p1, LO1/y;

    .line 7
    .line 8
    invoke-direct {p1, p0, v0}, LO1/y;-><init>(LO1/L;I)V

    .line 9
    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string p1, "invalid orientation"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0

    .line 20
    :cond_1
    new-instance p1, LO1/y;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-direct {p1, p0, v0}, LO1/y;-><init>(LO1/L;I)V

    .line 24
    .line 25
    .line 26
    return-object p1
.end method

.method public static n(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, LO1/y;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, p1, v1, p0}, LO1/y;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static o(JLjava/lang/String;)LO1/y;
    .locals 1

    .line 1
    new-instance v0, LO1/y;

    .line 2
    .line 3
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {v0, p2, p1, p0}, LO1/y;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static p(ILjava/lang/String;Ljava/lang/Boolean;)LO1/y;
    .locals 1

    .line 1
    new-instance v0, LO1/y;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, LO1/y;-><init>(ILjava/lang/String;Ljava/lang/Boolean;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static q(Ljava/lang/String;Ljava/lang/String;)LO1/y;
    .locals 2

    .line 1
    new-instance v0, LO1/y;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, p0, v1, p1}, LO1/y;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public static r()V
    .locals 2

    .line 1
    const-string v0, "gads:sdk_core_constants:experiment_id"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, LO1/z;->q(Ljava/lang/String;Ljava/lang/String;)LO1/y;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/pal/h2;->d:Lcom/google/android/gms/internal/pal/h2;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/google/android/gms/internal/pal/h2;->a:Lcom/google/android/gms/internal/pal/i2;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/google/android/gms/internal/pal/i2;->H:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Ljava/util/Collection;

    .line 15
    .line 16
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public abstract b(Landroid/view/View;)I
.end method

.method public abstract c(Landroid/view/View;)I
.end method

.method public abstract d(Landroid/view/View;)I
.end method

.method public abstract e()I
.end method

.method public abstract f()I
.end method

.method public abstract g()I
.end method

.method public abstract h()I
.end method

.method public abstract i()I
.end method

.method public final j()I
    .locals 2

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    iget v1, p0, LO1/z;->a:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, LO1/z;->i()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v1, p0, LO1/z;->a:I

    .line 14
    .line 15
    sub-int/2addr v0, v1

    .line 16
    :goto_0
    return v0
.end method

.method public abstract k(Landroid/view/View;)I
.end method

.method public abstract l(Landroid/view/View;)I
.end method

.method public abstract m(I)V
.end method
