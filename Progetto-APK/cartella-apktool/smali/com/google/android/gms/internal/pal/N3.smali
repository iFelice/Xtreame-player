.class public final Lcom/google/android/gms/internal/pal/N3;
.super Lcom/google/android/gms/internal/pal/n4;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/pal/M3;)V
    .locals 0

    .line 1
    const-class p1, Lcom/google/android/gms/internal/pal/d5;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/pal/n4;-><init>(Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final e(Lcom/google/android/gms/internal/pal/d5;)Lcom/google/android/gms/internal/pal/b5;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/pal/b5;->n()Lcom/google/android/gms/internal/pal/a5;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/d5;->q()Lcom/google/android/gms/internal/pal/f5;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-boolean v2, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 15
    .line 16
    .line 17
    iput-boolean v3, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 18
    .line 19
    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 20
    .line 21
    check-cast v2, Lcom/google/android/gms/internal/pal/b5;

    .line 22
    .line 23
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/pal/b5;->t(Lcom/google/android/gms/internal/pal/b5;Lcom/google/android/gms/internal/pal/f5;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pal/d5;->m()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-static {p0}, Lcom/google/android/gms/internal/pal/O6;->a(I)[B

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    array-length v1, p0

    .line 35
    invoke-static {v3, p0, v1}, Lcom/google/android/gms/internal/pal/r;->o(I[BI)Lcom/google/android/gms/internal/pal/q;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    iget-boolean v1, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 44
    .line 45
    .line 46
    iput-boolean v3, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 47
    .line 48
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 49
    .line 50
    check-cast v1, Lcom/google/android/gms/internal/pal/b5;

    .line 51
    .line 52
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/pal/b5;->u(Lcom/google/android/gms/internal/pal/b5;Lcom/google/android/gms/internal/pal/q;)V

    .line 53
    .line 54
    .line 55
    iget-boolean p0, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 56
    .line 57
    if-eqz p0, :cond_2

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 60
    .line 61
    .line 62
    iput-boolean v3, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 63
    .line 64
    :cond_2
    iget-object p0, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 65
    .line 66
    check-cast p0, Lcom/google/android/gms/internal/pal/b5;

    .line 67
    .line 68
    invoke-static {p0}, Lcom/google/android/gms/internal/pal/b5;->s(Lcom/google/android/gms/internal/pal/b5;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    check-cast p0, Lcom/google/android/gms/internal/pal/b5;

    .line 76
    .line 77
    return-object p0
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/internal/pal/j;)Lcom/google/android/gms/internal/pal/j;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/pal/d5;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/pal/N3;->e(Lcom/google/android/gms/internal/pal/d5;)Lcom/google/android/gms/internal/pal/b5;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/pal/r;)Lcom/google/android/gms/internal/pal/j;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/pal/x;->a()Lcom/google/android/gms/internal/pal/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/pal/d5;->p(Lcom/google/android/gms/internal/pal/r;Lcom/google/android/gms/internal/pal/x;)Lcom/google/android/gms/internal/pal/d5;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final d(Lcom/google/android/gms/internal/pal/j;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/pal/d5;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/d5;->m()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/P6;->a(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/d5;->q()Lcom/google/android/gms/internal/pal/f5;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/f5;->m()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v1, 0xc

    .line 19
    .line 20
    if-lt v0, v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/f5;->m()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/16 v0, 0x10

    .line 27
    .line 28
    if-gt p1, v0, :cond_0

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 32
    .line 33
    const-string v0, "invalid IV size"

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method
