.class public final Lcom/google/android/gms/internal/pal/D4;
.super Lcom/google/android/gms/internal/pal/n4;
.source "SourceFile"


# virtual methods
.method public final a(Lcom/google/android/gms/internal/pal/j;)Lcom/google/android/gms/internal/pal/j;
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/pal/S4;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/pal/Q4;->n()Lcom/google/android/gms/internal/pal/P4;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 13
    .line 14
    .line 15
    iput-boolean v2, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 16
    .line 17
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 18
    .line 19
    check-cast v1, Lcom/google/android/gms/internal/pal/Q4;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/google/android/gms/internal/pal/Q4;->r(Lcom/google/android/gms/internal/pal/Q4;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/S4;->m()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-static {v1}, Lcom/google/android/gms/internal/pal/O6;->a(I)[B

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    array-length v3, v1

    .line 33
    invoke-static {v2, v1, v3}, Lcom/google/android/gms/internal/pal/r;->o(I[BI)Lcom/google/android/gms/internal/pal/q;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-boolean v3, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 42
    .line 43
    .line 44
    iput-boolean v2, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 45
    .line 46
    :cond_1
    iget-object v3, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 47
    .line 48
    check-cast v3, Lcom/google/android/gms/internal/pal/Q4;

    .line 49
    .line 50
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/pal/Q4;->s(Lcom/google/android/gms/internal/pal/Q4;Lcom/google/android/gms/internal/pal/q;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/S4;->p()Lcom/google/android/gms/internal/pal/U4;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-boolean v1, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->f()V

    .line 62
    .line 63
    .line 64
    iput-boolean v2, v0, Lcom/google/android/gms/internal/pal/C;->I:Z

    .line 65
    .line 66
    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/internal/pal/C;->H:Lcom/google/android/gms/internal/pal/D;

    .line 67
    .line 68
    check-cast v1, Lcom/google/android/gms/internal/pal/Q4;

    .line 69
    .line 70
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/pal/Q4;->t(Lcom/google/android/gms/internal/pal/Q4;Lcom/google/android/gms/internal/pal/U4;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Lcom/google/android/gms/internal/pal/Q4;

    .line 78
    .line 79
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
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/pal/S4;->o(Lcom/google/android/gms/internal/pal/r;Lcom/google/android/gms/internal/pal/x;)Lcom/google/android/gms/internal/pal/S4;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final c()Ljava/util/Map;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/pal/m4;

    .line 7
    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/pal/S4;->n()Lcom/google/android/gms/internal/pal/R4;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/R4;->g()V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/pal/U4;->n()Lcom/google/android/gms/internal/pal/T4;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3}, Lcom/google/android/gms/internal/pal/T4;->g()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lcom/google/android/gms/internal/pal/U4;

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/pal/R4;->h(Lcom/google/android/gms/internal/pal/U4;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/google/android/gms/internal/pal/S4;

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/pal/m4;-><init>(Lcom/google/android/gms/internal/pal/D;I)V

    .line 39
    .line 40
    .line 41
    const-string v2, "AES_CMAC"

    .line 42
    .line 43
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    new-instance v1, Lcom/google/android/gms/internal/pal/m4;

    .line 47
    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/pal/S4;->n()Lcom/google/android/gms/internal/pal/R4;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/R4;->g()V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/google/android/gms/internal/pal/U4;->n()Lcom/google/android/gms/internal/pal/T4;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v4}, Lcom/google/android/gms/internal/pal/T4;->g()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Lcom/google/android/gms/internal/pal/U4;

    .line 67
    .line 68
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/pal/R4;->h(Lcom/google/android/gms/internal/pal/U4;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Lcom/google/android/gms/internal/pal/S4;

    .line 76
    .line 77
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/pal/m4;-><init>(Lcom/google/android/gms/internal/pal/D;I)V

    .line 78
    .line 79
    .line 80
    const-string v2, "AES256_CMAC"

    .line 81
    .line 82
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    new-instance v1, Lcom/google/android/gms/internal/pal/m4;

    .line 86
    .line 87
    invoke-static {}, Lcom/google/android/gms/internal/pal/S4;->n()Lcom/google/android/gms/internal/pal/R4;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/R4;->g()V

    .line 92
    .line 93
    .line 94
    invoke-static {}, Lcom/google/android/gms/internal/pal/U4;->n()Lcom/google/android/gms/internal/pal/T4;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v3}, Lcom/google/android/gms/internal/pal/T4;->g()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    check-cast v3, Lcom/google/android/gms/internal/pal/U4;

    .line 106
    .line 107
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/pal/R4;->h(Lcom/google/android/gms/internal/pal/U4;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/C;->d()Lcom/google/android/gms/internal/pal/D;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    check-cast v2, Lcom/google/android/gms/internal/pal/S4;

    .line 115
    .line 116
    const/4 v3, 0x3

    .line 117
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/pal/m4;-><init>(Lcom/google/android/gms/internal/pal/D;I)V

    .line 118
    .line 119
    .line 120
    const-string v2, "AES256_CMAC_RAW"

    .line 121
    .line 122
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    return-object v0
.end method

.method public final d(Lcom/google/android/gms/internal/pal/j;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/pal/S4;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/S4;->p()Lcom/google/android/gms/internal/pal/U4;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/M3;->A(Lcom/google/android/gms/internal/pal/U4;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/S4;->m()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/16 v0, 0x20

    .line 15
    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 20
    .line 21
    const-string v0, "AesCmacKey size wrong, must be 32 bytes"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method
