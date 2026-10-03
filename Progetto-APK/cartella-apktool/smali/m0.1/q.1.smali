.class public final Lm0/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/util/SparseBooleanArray;

.field public b:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 8
    .line 9
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lm0/q;->a:Landroid/util/SparseBooleanArray;

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 19
    .line 20
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lm0/q;->a:Landroid/util/SparseBooleanArray;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lm0/q;->b:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lm0/q;->a:Landroid/util/SparseBooleanArray;

    .line 9
    .line 10
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final b()Lm0/r;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lm0/q;->b:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 6
    .line 7
    .line 8
    iput-boolean v1, p0, Lm0/q;->b:Z

    .line 9
    .line 10
    new-instance v0, Lm0/r;

    .line 11
    .line 12
    iget-object v1, p0, Lm0/q;->a:Landroid/util/SparseBooleanArray;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lm0/r;-><init>(Landroid/util/SparseBooleanArray;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final c(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lm0/q;->b:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    invoke-static {v0}, Lo3/r;->M(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lm0/q;->a:Landroid/util/SparseBooleanArray;

    .line 9
    .line 10
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final d()Lcom/google/android/gms/internal/ads/o;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lm0/q;->b:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    invoke-static {v0}, Lo3/r;->M(Z)V

    .line 6
    .line 7
    .line 8
    iput-boolean v1, p0, Lm0/q;->b:Z

    .line 9
    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/o;

    .line 11
    .line 12
    iget-object v1, p0, Lm0/q;->a:Landroid/util/SparseBooleanArray;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/o;-><init>(Landroid/util/SparseBooleanArray;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method
