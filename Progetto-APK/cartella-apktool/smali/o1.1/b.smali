.class public final Lo1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:I

.field public c:I

.field public d:J

.field public final e:Z

.field public f:I

.field public g:I

.field public final h:Ljava/lang/Object;

.field public final i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/jr;Lcom/google/android/gms/internal/ads/jr;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo1/b;->i:Ljava/lang/Object;

    iput-object p2, p0, Lo1/b;->h:Ljava/lang/Object;

    iput-boolean p3, p0, Lo1/b;->e:Z

    const/16 p3, 0xc

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/jr;->z()I

    move-result p2

    iput p2, p0, Lo1/b;->a:I

    .line 3
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/jr;->z()I

    move-result p2

    iput p2, p0, Lo1/b;->g:I

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/jr;->r()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string p1, "first_chunk must be 1"

    invoke-static {p1, p2}, Lf/b;->t0(Ljava/lang/String;Z)V

    const/4 p1, -0x1

    iput p1, p0, Lo1/b;->b:I

    return-void
.end method

.method public constructor <init>(Lp0/E;Lp0/E;Z)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lo1/b;->i:Ljava/lang/Object;

    .line 8
    iput-object p2, p0, Lo1/b;->h:Ljava/lang/Object;

    .line 9
    iput-boolean p3, p0, Lo1/b;->e:Z

    const/16 p3, 0xc

    .line 10
    invoke-virtual {p2, p3}, Lp0/E;->L(I)V

    .line 11
    invoke-virtual {p2}, Lp0/E;->D()I

    move-result p2

    iput p2, p0, Lo1/b;->a:I

    .line 12
    invoke-virtual {p1, p3}, Lp0/E;->L(I)V

    .line 13
    invoke-virtual {p1}, Lp0/E;->D()I

    move-result p2

    iput p2, p0, Lo1/b;->g:I

    .line 14
    invoke-virtual {p1}, Lp0/E;->l()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string p1, "first_chunk must be 1"

    invoke-static {p1, p2}, LE3/f;->c(Ljava/lang/String;Z)V

    const/4 p1, -0x1

    .line 15
    iput p1, p0, Lo1/b;->b:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .line 1
    iget v0, p0, Lo1/b;->b:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Lo1/b;->b:I

    .line 6
    .line 7
    iget v2, p0, Lo1/b;->a:I

    .line 8
    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return v0

    .line 13
    :cond_0
    iget-boolean v0, p0, Lo1/b;->e:Z

    .line 14
    .line 15
    iget-object v2, p0, Lo1/b;->h:Ljava/lang/Object;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    check-cast v2, Lp0/E;

    .line 20
    .line 21
    invoke-virtual {v2}, Lp0/E;->E()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    check-cast v2, Lp0/E;

    .line 27
    .line 28
    invoke-virtual {v2}, Lp0/E;->B()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    :goto_0
    iput-wide v2, p0, Lo1/b;->d:J

    .line 33
    .line 34
    iget v0, p0, Lo1/b;->b:I

    .line 35
    .line 36
    iget v2, p0, Lo1/b;->f:I

    .line 37
    .line 38
    if-ne v0, v2, :cond_3

    .line 39
    .line 40
    iget-object v0, p0, Lo1/b;->i:Ljava/lang/Object;

    .line 41
    .line 42
    move-object v2, v0

    .line 43
    check-cast v2, Lp0/E;

    .line 44
    .line 45
    invoke-virtual {v2}, Lp0/E;->D()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    iput v2, p0, Lo1/b;->c:I

    .line 50
    .line 51
    move-object v2, v0

    .line 52
    check-cast v2, Lp0/E;

    .line 53
    .line 54
    const/4 v3, 0x4

    .line 55
    invoke-virtual {v2, v3}, Lp0/E;->M(I)V

    .line 56
    .line 57
    .line 58
    iget v2, p0, Lo1/b;->g:I

    .line 59
    .line 60
    sub-int/2addr v2, v1

    .line 61
    iput v2, p0, Lo1/b;->g:I

    .line 62
    .line 63
    if-lez v2, :cond_2

    .line 64
    .line 65
    check-cast v0, Lp0/E;

    .line 66
    .line 67
    invoke-virtual {v0}, Lp0/E;->D()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    sub-int/2addr v0, v1

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    const/4 v0, -0x1

    .line 74
    :goto_1
    iput v0, p0, Lo1/b;->f:I

    .line 75
    .line 76
    :cond_3
    return v1
.end method

.method public final b()Z
    .locals 4

    .line 1
    iget v0, p0, Lo1/b;->b:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Lo1/b;->b:I

    .line 6
    .line 7
    iget v2, p0, Lo1/b;->a:I

    .line 8
    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return v0

    .line 13
    :cond_0
    iget-boolean v0, p0, Lo1/b;->e:Z

    .line 14
    .line 15
    iget-object v2, p0, Lo1/b;->h:Ljava/lang/Object;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    check-cast v2, Lcom/google/android/gms/internal/ads/jr;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->F()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    check-cast v2, Lcom/google/android/gms/internal/ads/jr;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->E()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    :goto_0
    iput-wide v2, p0, Lo1/b;->d:J

    .line 33
    .line 34
    iget v0, p0, Lo1/b;->b:I

    .line 35
    .line 36
    iget v2, p0, Lo1/b;->f:I

    .line 37
    .line 38
    if-ne v0, v2, :cond_3

    .line 39
    .line 40
    iget-object v0, p0, Lo1/b;->i:Ljava/lang/Object;

    .line 41
    .line 42
    move-object v2, v0

    .line 43
    check-cast v2, Lcom/google/android/gms/internal/ads/jr;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->z()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    iput v2, p0, Lo1/b;->c:I

    .line 50
    .line 51
    move-object v2, v0

    .line 52
    check-cast v2, Lcom/google/android/gms/internal/ads/jr;

    .line 53
    .line 54
    const/4 v3, 0x4

    .line 55
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/jr;->k(I)V

    .line 56
    .line 57
    .line 58
    iget v2, p0, Lo1/b;->g:I

    .line 59
    .line 60
    const/4 v3, -0x1

    .line 61
    add-int/2addr v2, v3

    .line 62
    iput v2, p0, Lo1/b;->g:I

    .line 63
    .line 64
    if-lez v2, :cond_2

    .line 65
    .line 66
    check-cast v0, Lcom/google/android/gms/internal/ads/jr;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->z()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    add-int/2addr v3, v0

    .line 73
    :cond_2
    iput v3, p0, Lo1/b;->f:I

    .line 74
    .line 75
    :cond_3
    return v1
.end method
