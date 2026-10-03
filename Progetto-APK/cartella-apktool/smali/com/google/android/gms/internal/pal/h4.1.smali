.class public final Lcom/google/android/gms/internal/pal/h4;
.super LP1/e;
.source "SourceFile"


# direct methods
.method public static v(IIII)Lcom/google/android/gms/internal/pal/m4;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/pal/Y5;->m()Lcom/google/android/gms/internal/pal/X5;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 11
    .line 12
    .line 13
    iput-boolean v2, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 14
    .line 15
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 16
    .line 17
    check-cast v1, Lcom/google/android/gms/internal/pal/Y5;

    .line 18
    .line 19
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/pal/Y5;->r(Lcom/google/android/gms/internal/pal/Y5;I)V

    .line 20
    .line 21
    .line 22
    iget-boolean p0, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 23
    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 27
    .line 28
    .line 29
    iput-boolean v2, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 30
    .line 31
    :cond_1
    iget-object p0, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 32
    .line 33
    check-cast p0, Lcom/google/android/gms/internal/pal/Y5;

    .line 34
    .line 35
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/pal/Y5;->s(Lcom/google/android/gms/internal/pal/Y5;I)V

    .line 36
    .line 37
    .line 38
    iget-boolean p0, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 39
    .line 40
    if-eqz p0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 43
    .line 44
    .line 45
    iput-boolean v2, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 46
    .line 47
    :cond_2
    iget-object p0, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 48
    .line 49
    check-cast p0, Lcom/google/android/gms/internal/pal/Y5;

    .line 50
    .line 51
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/pal/Y5;->t(Lcom/google/android/gms/internal/pal/Y5;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Lcom/google/android/gms/internal/pal/Y5;

    .line 59
    .line 60
    new-instance p1, Lcom/google/android/gms/internal/pal/m4;

    .line 61
    .line 62
    invoke-static {}, Lcom/google/android/gms/internal/pal/W5;->m()Lcom/google/android/gms/internal/pal/U5;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    iget-boolean v0, p2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    invoke-virtual {p2}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 71
    .line 72
    .line 73
    iput-boolean v2, p2, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 74
    .line 75
    :cond_3
    iget-object v0, p2, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 76
    .line 77
    check-cast v0, Lcom/google/android/gms/internal/pal/W5;

    .line 78
    .line 79
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/pal/W5;->p(Lcom/google/android/gms/internal/pal/W5;Lcom/google/android/gms/internal/pal/Y5;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    check-cast p0, Lcom/google/android/gms/internal/pal/W5;

    .line 87
    .line 88
    invoke-direct {p1, p0, p3}, Lcom/google/android/gms/internal/pal/m4;-><init>(Lcom/google/android/gms/internal/pal/D;I)V

    .line 89
    .line 90
    .line 91
    return-object p1
.end method


# virtual methods
.method public final n()Lcom/google/android/gms/internal/pal/n4;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/pal/L3;

    const-class v1, Lcom/google/android/gms/internal/pal/W5;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/pal/L3;-><init>(Ljava/lang/Class;I)V

    return-object v0
.end method

.method public final o()I
    .locals 1

    .line 1
    const/4 v0, 0x3

    return v0
.end method

.method public final synthetic p(Lcom/google/android/gms/internal/pal/r;)Lcom/google/android/gms/internal/pal/j;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/pal/x;->a()Lcom/google/android/gms/internal/pal/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/pal/a6;->o(Lcom/google/android/gms/internal/pal/r;Lcom/google/android/gms/internal/pal/x;)Lcom/google/android/gms/internal/pal/a6;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "type.googleapis.com/google.crypto.tink.HpkePrivateKey"

    return-object v0
.end method

.method public final r(Lcom/google/android/gms/internal/pal/j;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/pal/a6;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/a6;->q()Lcom/google/android/gms/internal/pal/r;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/r;->i()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/a6;->u()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/a6;->m()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/P6;->b(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/a6;->p()Lcom/google/android/gms/internal/pal/c6;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/c6;->n()Lcom/google/android/gms/internal/pal/Y5;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Lcom/google/android/gms/internal/pal/i4;->a(Lcom/google/android/gms/internal/pal/Y5;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 39
    .line 40
    const-string v0, "Missing public key."

    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 47
    .line 48
    const-string v0, "Private key is empty."

    .line 49
    .line 50
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1
.end method
