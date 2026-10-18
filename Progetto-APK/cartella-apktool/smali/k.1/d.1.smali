.class public abstract Lk/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LP1/x;)V
    .locals 1

    .line 1
    const-string v0, "database"

    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lk/d;->a:Ljava/lang/Object;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lk/d;->b:Ljava/lang/Object;

    .line 5
    new-instance p1, Le0/C;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Le0/C;-><init>(Ljava/lang/Object;I)V

    .line 6
    new-instance v0, Lt6/f;

    invoke-direct {v0, p1}, Lt6/f;-><init>(LC6/a;)V

    .line 7
    iput-object v0, p0, Lk/d;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lk/d;->a:Ljava/lang/Object;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/pal/w4;)V
    .locals 5

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/d;->a:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-gtz v1, :cond_1

    .line 9
    aget-object v2, p2, v1

    .line 10
    iget-object v3, v2, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 11
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, v2, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    if-nez v3, :cond_0

    .line 12
    invoke-virtual {p1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "KeyTypeManager constructed with duplicate factories for primitive "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    aget-object p2, p2, v0

    .line 16
    iget-object p2, p2, Lcom/google/android/gms/internal/pal/w4;->a:Ljava/lang/Class;

    .line 17
    iput-object p2, p0, Lk/d;->c:Ljava/lang/Object;

    .line 18
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lk/d;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c()LT1/i;
    .locals 3

    .line 1
    iget-object v0, p0, Lk/d;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LP1/x;

    .line 4
    .line 5
    invoke-virtual {v0}, LP1/x;->a()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lk/d;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lk/d;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lt6/b;

    .line 23
    .line 24
    check-cast v0, Lt6/f;

    .line 25
    .line 26
    invoke-virtual {v0}, Lt6/f;->a()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, LT1/i;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lk/d;->d()LT1/i;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_0
    return-object v0
.end method

.method public final d()LT1/i;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk/d;->e()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lk/d;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, LP1/x;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, LP1/x;->a()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, LP1/x;->b()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, LP1/x;->g()LT1/f;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1}, LT1/f;->getWritableDatabase()LT1/b;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v1, v0}, LT1/b;->m(Ljava/lang/String;)LT1/i;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public f()LU4/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lk/d;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LU4/b;

    .line 4
    .line 5
    return-object v0
.end method

.method public abstract g()Landroid/view/View;
.end method

.method public h()Landroid/view/View$OnClickListener;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public abstract i()Landroid/widget/ImageView;
.end method

.method public final j(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 2

    .line 1
    instance-of v0, p1, LI/b;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    check-cast p1, LI/b;

    .line 6
    .line 7
    iget-object v0, p0, Lk/d;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lr/m;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lr/m;

    .line 14
    .line 15
    invoke-direct {v0}, Lr/m;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lk/d;->b:Ljava/lang/Object;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lk/d;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lr/m;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lr/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/view/MenuItem;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    new-instance v0, Lk/v;

    .line 33
    .line 34
    iget-object v1, p0, Lk/d;->a:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Landroid/content/Context;

    .line 37
    .line 38
    invoke-direct {v0, v1, p1}, Lk/v;-><init>(Landroid/content/Context;LI/b;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lk/d;->b:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, Lr/m;

    .line 44
    .line 45
    invoke-virtual {v1, p1, v0}, Lr/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    :cond_1
    return-object v0

    .line 49
    :cond_2
    return-object p1
.end method

.method public abstract k()Landroid/view/ViewGroup;
.end method

.method public abstract l(Ljava/util/HashMap;Ll/c;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.end method

.method public final m(LT1/i;)V
    .locals 1

    .line 1
    const-string v0, "statement"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lk/d;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lt6/b;

    .line 9
    .line 10
    check-cast v0, Lt6/f;

    .line 11
    .line 12
    invoke-virtual {v0}, Lt6/f;->a()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, LT1/i;

    .line 17
    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lk/d;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public n()Lcom/google/android/gms/internal/pal/n4;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "Creating keys is not supported."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public abstract o()I
.end method

.method public abstract p(Lcom/google/android/gms/internal/pal/r;)Lcom/google/android/gms/internal/pal/j;
.end method

.method public abstract q()Ljava/lang/String;
.end method

.method public abstract r(Lcom/google/android/gms/internal/pal/j;)V
.end method

.method public final s(Lcom/google/android/gms/internal/pal/j;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lk/d;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/gms/internal/pal/w4;

    .line 10
    .line 11
    if-eqz v0, :cond_10

    .line 12
    .line 13
    check-cast v0, Lcom/google/android/gms/internal/pal/K3;

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    iget v0, v0, Lcom/google/android/gms/internal/pal/K3;->b:I

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x4

    .line 20
    const/4 v3, 0x3

    .line 21
    const/4 v4, 0x2

    .line 22
    const/4 v5, 0x1

    .line 23
    packed-switch v0, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    check-cast p1, Lcom/google/android/gms/internal/pal/P5;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/P5;->q()Lcom/google/android/gms/internal/pal/T5;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p2}, Lcom/google/android/gms/internal/pal/T5;->q()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/P5;->r()Lcom/google/android/gms/internal/pal/r;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/r;->p()[B

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 45
    .line 46
    const-string v6, "HMAC"

    .line 47
    .line 48
    invoke-direct {v1, v0, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/P5;->q()Lcom/google/android/gms/internal/pal/T5;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/T5;->m()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    add-int/lit8 p2, p2, -0x2

    .line 60
    .line 61
    if-eq p2, v5, :cond_4

    .line 62
    .line 63
    if-eq p2, v4, :cond_3

    .line 64
    .line 65
    if-eq p2, v3, :cond_2

    .line 66
    .line 67
    if-eq p2, v2, :cond_1

    .line 68
    .line 69
    const/4 v0, 0x5

    .line 70
    if-ne p2, v0, :cond_0

    .line 71
    .line 72
    new-instance p2, Lcom/google/android/gms/internal/pal/N6;

    .line 73
    .line 74
    new-instance v0, LB0/w0;

    .line 75
    .line 76
    const-string v2, "HMACSHA224"

    .line 77
    .line 78
    invoke-direct {v0, v2, v1}, LB0/w0;-><init>(Ljava/lang/String;Ljavax/crypto/spec/SecretKeySpec;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/pal/N6;-><init>(Lcom/google/android/gms/internal/pal/O4;I)V

    .line 82
    .line 83
    .line 84
    goto/16 :goto_4

    .line 85
    .line 86
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 87
    .line 88
    const-string p2, "unknown hash"

    .line 89
    .line 90
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p1

    .line 94
    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/pal/N6;

    .line 95
    .line 96
    new-instance v0, LB0/w0;

    .line 97
    .line 98
    const-string v2, "HMACSHA512"

    .line 99
    .line 100
    invoke-direct {v0, v2, v1}, LB0/w0;-><init>(Ljava/lang/String;Ljavax/crypto/spec/SecretKeySpec;)V

    .line 101
    .line 102
    .line 103
    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/pal/N6;-><init>(Lcom/google/android/gms/internal/pal/O4;I)V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_4

    .line 107
    .line 108
    :cond_2
    new-instance p2, Lcom/google/android/gms/internal/pal/N6;

    .line 109
    .line 110
    new-instance v0, LB0/w0;

    .line 111
    .line 112
    const-string v2, "HMACSHA256"

    .line 113
    .line 114
    invoke-direct {v0, v2, v1}, LB0/w0;-><init>(Ljava/lang/String;Ljavax/crypto/spec/SecretKeySpec;)V

    .line 115
    .line 116
    .line 117
    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/pal/N6;-><init>(Lcom/google/android/gms/internal/pal/O4;I)V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_4

    .line 121
    .line 122
    :cond_3
    new-instance p2, Lcom/google/android/gms/internal/pal/N6;

    .line 123
    .line 124
    new-instance v0, LB0/w0;

    .line 125
    .line 126
    const-string v2, "HMACSHA384"

    .line 127
    .line 128
    invoke-direct {v0, v2, v1}, LB0/w0;-><init>(Ljava/lang/String;Ljavax/crypto/spec/SecretKeySpec;)V

    .line 129
    .line 130
    .line 131
    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/pal/N6;-><init>(Lcom/google/android/gms/internal/pal/O4;I)V

    .line 132
    .line 133
    .line 134
    goto/16 :goto_4

    .line 135
    .line 136
    :cond_4
    new-instance p2, Lcom/google/android/gms/internal/pal/N6;

    .line 137
    .line 138
    new-instance v0, LB0/w0;

    .line 139
    .line 140
    const-string v2, "HMACSHA1"

    .line 141
    .line 142
    invoke-direct {v0, v2, v1}, LB0/w0;-><init>(Ljava/lang/String;Ljavax/crypto/spec/SecretKeySpec;)V

    .line 143
    .line 144
    .line 145
    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/pal/N6;-><init>(Lcom/google/android/gms/internal/pal/O4;I)V

    .line 146
    .line 147
    .line 148
    goto/16 :goto_4

    .line 149
    .line 150
    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/pal/Q4;

    .line 151
    .line 152
    new-instance p2, Lcom/google/android/gms/internal/pal/N6;

    .line 153
    .line 154
    new-instance v0, Lcom/google/android/gms/internal/pal/i2;

    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/Q4;->q()Lcom/google/android/gms/internal/pal/r;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/r;->p()[B

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/pal/i2;-><init>([B)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/Q4;->p()Lcom/google/android/gms/internal/pal/U4;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/U4;->m()I

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/pal/N6;-><init>(Lcom/google/android/gms/internal/pal/O4;I)V

    .line 176
    .line 177
    .line 178
    goto/16 :goto_4

    .line 179
    .line 180
    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/pal/c6;

    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/c6;->r()Lcom/google/android/gms/internal/pal/r;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    invoke-virtual {p2}, Lcom/google/android/gms/internal/pal/r;->i()I

    .line 187
    .line 188
    .line 189
    move-result p2

    .line 190
    if-eqz p2, :cond_5

    .line 191
    .line 192
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/c6;->n()Lcom/google/android/gms/internal/pal/Y5;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    invoke-static {p2}, Lcom/google/android/gms/internal/pal/y4;->F(Lcom/google/android/gms/internal/pal/Y5;)Lcom/google/android/gms/internal/pal/g4;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-static {p2}, Lcom/google/android/gms/internal/pal/y4;->T(Lcom/google/android/gms/internal/pal/Y5;)Lcom/google/android/gms/internal/pal/r1;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-static {p2}, Lcom/google/android/gms/internal/pal/y4;->h(Lcom/google/android/gms/internal/pal/Y5;)Lcom/google/android/gms/internal/pal/d4;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    new-instance v2, Lcom/google/android/gms/internal/pal/f4;

    .line 209
    .line 210
    invoke-direct {v2, p1, v0, v1, p2}, Lcom/google/android/gms/internal/pal/f4;-><init>(Lcom/google/android/gms/internal/pal/c6;Lcom/google/android/gms/internal/pal/g4;Lcom/google/android/gms/internal/pal/r1;Lcom/google/android/gms/internal/pal/d4;)V

    .line 211
    .line 212
    .line 213
    :goto_0
    move-object p2, v2

    .line 214
    goto/16 :goto_4

    .line 215
    .line 216
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 217
    .line 218
    const-string p2, "HpkePublicKey.public_key is empty."

    .line 219
    .line 220
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw p1

    .line 224
    :pswitch_2
    check-cast p1, Lcom/google/android/gms/internal/pal/a6;

    .line 225
    .line 226
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/a6;->u()Z

    .line 227
    .line 228
    .line 229
    move-result p2

    .line 230
    if-eqz p2, :cond_f

    .line 231
    .line 232
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/a6;->p()Lcom/google/android/gms/internal/pal/c6;

    .line 233
    .line 234
    .line 235
    move-result-object p2

    .line 236
    invoke-virtual {p2}, Lcom/google/android/gms/internal/pal/c6;->v()Z

    .line 237
    .line 238
    .line 239
    move-result p2

    .line 240
    if-eqz p2, :cond_e

    .line 241
    .line 242
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/a6;->q()Lcom/google/android/gms/internal/pal/r;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    invoke-virtual {p2}, Lcom/google/android/gms/internal/pal/r;->i()I

    .line 247
    .line 248
    .line 249
    move-result p2

    .line 250
    if-eqz p2, :cond_d

    .line 251
    .line 252
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/a6;->p()Lcom/google/android/gms/internal/pal/c6;

    .line 253
    .line 254
    .line 255
    move-result-object p2

    .line 256
    invoke-virtual {p2}, Lcom/google/android/gms/internal/pal/c6;->n()Lcom/google/android/gms/internal/pal/Y5;

    .line 257
    .line 258
    .line 259
    move-result-object p2

    .line 260
    invoke-static {p2}, Lcom/google/android/gms/internal/pal/y4;->F(Lcom/google/android/gms/internal/pal/Y5;)Lcom/google/android/gms/internal/pal/g4;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-static {p2}, Lcom/google/android/gms/internal/pal/y4;->T(Lcom/google/android/gms/internal/pal/Y5;)Lcom/google/android/gms/internal/pal/r1;

    .line 265
    .line 266
    .line 267
    move-result-object v6

    .line 268
    invoke-static {p2}, Lcom/google/android/gms/internal/pal/y4;->h(Lcom/google/android/gms/internal/pal/Y5;)Lcom/google/android/gms/internal/pal/d4;

    .line 269
    .line 270
    .line 271
    move-result-object v7

    .line 272
    invoke-virtual {p2}, Lcom/google/android/gms/internal/pal/Y5;->q()I

    .line 273
    .line 274
    .line 275
    move-result p2

    .line 276
    add-int/lit8 v8, p2, -0x2

    .line 277
    .line 278
    if-ne v8, v5, :cond_c

    .line 279
    .line 280
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/a6;->p()Lcom/google/android/gms/internal/pal/c6;

    .line 281
    .line 282
    .line 283
    move-result-object p2

    .line 284
    invoke-virtual {p2}, Lcom/google/android/gms/internal/pal/c6;->n()Lcom/google/android/gms/internal/pal/Y5;

    .line 285
    .line 286
    .line 287
    move-result-object p2

    .line 288
    invoke-virtual {p2}, Lcom/google/android/gms/internal/pal/Y5;->q()I

    .line 289
    .line 290
    .line 291
    move-result p2

    .line 292
    add-int/lit8 p2, p2, -0x2

    .line 293
    .line 294
    if-eq p2, v5, :cond_b

    .line 295
    .line 296
    if-eq p2, v4, :cond_7

    .line 297
    .line 298
    if-eq p2, v3, :cond_7

    .line 299
    .line 300
    if-ne p2, v2, :cond_6

    .line 301
    .line 302
    goto :goto_1

    .line 303
    :cond_6
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 304
    .line 305
    const-string p2, "Unrecognized HPKE KEM identifier"

    .line 306
    .line 307
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    throw p1

    .line 311
    :cond_7
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/a6;->q()Lcom/google/android/gms/internal/pal/r;

    .line 312
    .line 313
    .line 314
    move-result-object p2

    .line 315
    invoke-virtual {p2}, Lcom/google/android/gms/internal/pal/r;->p()[B

    .line 316
    .line 317
    .line 318
    move-result-object p2

    .line 319
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/a6;->p()Lcom/google/android/gms/internal/pal/c6;

    .line 320
    .line 321
    .line 322
    move-result-object v8

    .line 323
    invoke-virtual {v8}, Lcom/google/android/gms/internal/pal/c6;->r()Lcom/google/android/gms/internal/pal/r;

    .line 324
    .line 325
    .line 326
    move-result-object v8

    .line 327
    invoke-virtual {v8}, Lcom/google/android/gms/internal/pal/r;->p()[B

    .line 328
    .line 329
    .line 330
    move-result-object v8

    .line 331
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/a6;->p()Lcom/google/android/gms/internal/pal/c6;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/c6;->n()Lcom/google/android/gms/internal/pal/Y5;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/Y5;->q()I

    .line 340
    .line 341
    .line 342
    move-result p1

    .line 343
    add-int/lit8 p1, p1, -0x2

    .line 344
    .line 345
    if-eq p1, v4, :cond_a

    .line 346
    .line 347
    if-eq p1, v3, :cond_9

    .line 348
    .line 349
    if-ne p1, v2, :cond_8

    .line 350
    .line 351
    goto :goto_2

    .line 352
    :cond_8
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 353
    .line 354
    const-string p2, "Unrecognized NIST HPKE KEM identifier"

    .line 355
    .line 356
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    throw p1

    .line 360
    :cond_9
    const/4 v3, 0x2

    .line 361
    goto :goto_2

    .line 362
    :cond_a
    const/4 v3, 0x1

    .line 363
    :goto_2
    invoke-static {v3}, Lcom/google/android/gms/internal/pal/y4;->C0(I)Ljava/security/spec/ECParameterSpec;

    .line 364
    .line 365
    .line 366
    move-result-object p1

    .line 367
    invoke-static {p1, v8}, Lcom/google/android/gms/internal/pal/y4;->z0(Ljava/security/spec/ECParameterSpec;[B)Ljava/security/interfaces/ECPublicKey;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    invoke-static {v3, p2}, Lcom/google/android/gms/internal/pal/y4;->u0(I[B)Ljava/security/interfaces/ECPrivateKey;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/pal/y4;->o0(Ljava/security/interfaces/ECPrivateKey;Ljava/security/interfaces/ECPublicKey;)V

    .line 376
    .line 377
    .line 378
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    .line 379
    .line 380
    .line 381
    move-result-object p1

    .line 382
    invoke-interface {v2}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/pal/y4;->f0(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    .line 391
    .line 392
    .line 393
    new-instance p1, Lcom/google/android/gms/internal/pal/G4;

    .line 394
    .line 395
    invoke-direct {p1, v1, p2, v8}, Lcom/google/android/gms/internal/pal/G4;-><init>(I[B[B)V

    .line 396
    .line 397
    .line 398
    goto :goto_3

    .line 399
    :cond_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/a6;->q()Lcom/google/android/gms/internal/pal/r;

    .line 400
    .line 401
    .line 402
    move-result-object p1

    .line 403
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/r;->p()[B

    .line 404
    .line 405
    .line 406
    move-result-object p1

    .line 407
    new-instance p2, Lcom/google/android/gms/internal/pal/G4;

    .line 408
    .line 409
    invoke-static {p1}, Lcom/google/android/gms/internal/pal/y4;->X([B)[B

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    invoke-direct {p2, v5, p1, v1}, Lcom/google/android/gms/internal/pal/G4;-><init>(I[B[B)V

    .line 414
    .line 415
    .line 416
    move-object p1, p2

    .line 417
    :goto_3
    new-instance p2, Lm2/o;

    .line 418
    .line 419
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 420
    .line 421
    .line 422
    iput-object p1, p2, Lm2/o;->G:Ljava/lang/Object;

    .line 423
    .line 424
    iput-object v0, p2, Lm2/o;->H:Ljava/lang/Object;

    .line 425
    .line 426
    iput-object v6, p2, Lm2/o;->J:Ljava/lang/Object;

    .line 427
    .line 428
    iput-object v7, p2, Lm2/o;->I:Ljava/lang/Object;

    .line 429
    .line 430
    goto/16 :goto_4

    .line 431
    .line 432
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 433
    .line 434
    invoke-static {p2}, Lcom/google/android/gms/internal/pal/y4;->B(I)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object p2

    .line 438
    const-string v0, "Unable to determine KEM-encoding length for "

    .line 439
    .line 440
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object p2

    .line 444
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    throw p1

    .line 448
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 449
    .line 450
    const-string p2, "HpkePrivateKey.private_key is empty."

    .line 451
    .line 452
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    throw p1

    .line 456
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 457
    .line 458
    const-string p2, "HpkePrivateKey.public_key is missing params field."

    .line 459
    .line 460
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    throw p1

    .line 464
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 465
    .line 466
    const-string p2, "HpkePrivateKey is missing public_key field."

    .line 467
    .line 468
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    throw p1

    .line 472
    :pswitch_3
    check-cast p1, Lcom/google/android/gms/internal/pal/L5;

    .line 473
    .line 474
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/L5;->n()Lcom/google/android/gms/internal/pal/G5;

    .line 475
    .line 476
    .line 477
    move-result-object p2

    .line 478
    invoke-virtual {p2}, Lcom/google/android/gms/internal/pal/G5;->p()Lcom/google/android/gms/internal/pal/N5;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/N5;->q()I

    .line 483
    .line 484
    .line 485
    move-result v1

    .line 486
    invoke-static {v1}, Lcom/google/android/gms/internal/pal/y4;->Q(I)I

    .line 487
    .line 488
    .line 489
    move-result v1

    .line 490
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/L5;->r()Lcom/google/android/gms/internal/pal/r;

    .line 491
    .line 492
    .line 493
    move-result-object v2

    .line 494
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/r;->p()[B

    .line 495
    .line 496
    .line 497
    move-result-object v2

    .line 498
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/L5;->s()Lcom/google/android/gms/internal/pal/r;

    .line 499
    .line 500
    .line 501
    move-result-object p1

    .line 502
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/r;->p()[B

    .line 503
    .line 504
    .line 505
    move-result-object p1

    .line 506
    invoke-static {v1}, Lcom/google/android/gms/internal/pal/y4;->C0(I)Ljava/security/spec/ECParameterSpec;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    new-instance v3, Ljava/math/BigInteger;

    .line 511
    .line 512
    invoke-direct {v3, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 513
    .line 514
    .line 515
    new-instance v2, Ljava/math/BigInteger;

    .line 516
    .line 517
    invoke-direct {v2, v5, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 518
    .line 519
    .line 520
    new-instance p1, Ljava/security/spec/ECPoint;

    .line 521
    .line 522
    invoke-direct {p1, v3, v2}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    .line 526
    .line 527
    .line 528
    move-result-object v2

    .line 529
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/pal/y4;->f0(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    .line 530
    .line 531
    .line 532
    new-instance v2, Ljava/security/spec/ECPublicKeySpec;

    .line 533
    .line 534
    invoke-direct {v2, p1, v1}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 535
    .line 536
    .line 537
    sget-object p1, Lcom/google/android/gms/internal/pal/J6;->i:Lcom/google/android/gms/internal/pal/J6;

    .line 538
    .line 539
    const-string v1, "EC"

    .line 540
    .line 541
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/pal/J6;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object p1

    .line 545
    check-cast p1, Ljava/security/KeyFactory;

    .line 546
    .line 547
    invoke-virtual {p1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    .line 548
    .line 549
    .line 550
    move-result-object p1

    .line 551
    move-object v2, p1

    .line 552
    check-cast v2, Ljava/security/interfaces/ECPublicKey;

    .line 553
    .line 554
    new-instance v6, Lz/h;

    .line 555
    .line 556
    invoke-virtual {p2}, Lcom/google/android/gms/internal/pal/G5;->m()Lcom/google/android/gms/internal/pal/C5;

    .line 557
    .line 558
    .line 559
    move-result-object p1

    .line 560
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/C5;->o()Lcom/google/android/gms/internal/pal/g6;

    .line 561
    .line 562
    .line 563
    move-result-object p1

    .line 564
    invoke-direct {v6, p1}, Lz/h;-><init>(Lcom/google/android/gms/internal/pal/g6;)V

    .line 565
    .line 566
    .line 567
    new-instance p1, Lcom/google/android/gms/internal/pal/H6;

    .line 568
    .line 569
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/N5;->o()Lcom/google/android/gms/internal/pal/r;

    .line 570
    .line 571
    .line 572
    move-result-object v1

    .line 573
    invoke-virtual {v1}, Lcom/google/android/gms/internal/pal/r;->p()[B

    .line 574
    .line 575
    .line 576
    move-result-object v3

    .line 577
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/N5;->r()I

    .line 578
    .line 579
    .line 580
    move-result v0

    .line 581
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/y4;->G(I)Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v4

    .line 585
    invoke-virtual {p2}, Lcom/google/android/gms/internal/pal/G5;->s()I

    .line 586
    .line 587
    .line 588
    move-result p2

    .line 589
    invoke-static {p2}, Lcom/google/android/gms/internal/pal/y4;->Z(I)I

    .line 590
    .line 591
    .line 592
    move-result v5

    .line 593
    move-object v1, p1

    .line 594
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/pal/H6;-><init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;ILz/h;)V

    .line 595
    .line 596
    .line 597
    move-object p2, p1

    .line 598
    goto/16 :goto_4

    .line 599
    .line 600
    :pswitch_4
    check-cast p1, Lcom/google/android/gms/internal/pal/J5;

    .line 601
    .line 602
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/J5;->p()Lcom/google/android/gms/internal/pal/L5;

    .line 603
    .line 604
    .line 605
    move-result-object p2

    .line 606
    invoke-virtual {p2}, Lcom/google/android/gms/internal/pal/L5;->n()Lcom/google/android/gms/internal/pal/G5;

    .line 607
    .line 608
    .line 609
    move-result-object p2

    .line 610
    invoke-virtual {p2}, Lcom/google/android/gms/internal/pal/G5;->p()Lcom/google/android/gms/internal/pal/N5;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/N5;->q()I

    .line 615
    .line 616
    .line 617
    move-result v1

    .line 618
    invoke-static {v1}, Lcom/google/android/gms/internal/pal/y4;->Q(I)I

    .line 619
    .line 620
    .line 621
    move-result v1

    .line 622
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/J5;->q()Lcom/google/android/gms/internal/pal/r;

    .line 623
    .line 624
    .line 625
    move-result-object p1

    .line 626
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/r;->p()[B

    .line 627
    .line 628
    .line 629
    move-result-object p1

    .line 630
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/pal/y4;->u0(I[B)Ljava/security/interfaces/ECPrivateKey;

    .line 631
    .line 632
    .line 633
    move-result-object p1

    .line 634
    new-instance v1, Lz/h;

    .line 635
    .line 636
    invoke-virtual {p2}, Lcom/google/android/gms/internal/pal/G5;->m()Lcom/google/android/gms/internal/pal/C5;

    .line 637
    .line 638
    .line 639
    move-result-object v2

    .line 640
    invoke-virtual {v2}, Lcom/google/android/gms/internal/pal/C5;->o()Lcom/google/android/gms/internal/pal/g6;

    .line 641
    .line 642
    .line 643
    move-result-object v2

    .line 644
    invoke-direct {v1, v2}, Lz/h;-><init>(Lcom/google/android/gms/internal/pal/g6;)V

    .line 645
    .line 646
    .line 647
    new-instance v2, Lo/j;

    .line 648
    .line 649
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/N5;->o()Lcom/google/android/gms/internal/pal/r;

    .line 650
    .line 651
    .line 652
    move-result-object v3

    .line 653
    invoke-virtual {v3}, Lcom/google/android/gms/internal/pal/r;->p()[B

    .line 654
    .line 655
    .line 656
    move-result-object v3

    .line 657
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/N5;->r()I

    .line 658
    .line 659
    .line 660
    move-result v0

    .line 661
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/y4;->G(I)Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    invoke-virtual {p2}, Lcom/google/android/gms/internal/pal/G5;->s()I

    .line 666
    .line 667
    .line 668
    move-result p2

    .line 669
    invoke-static {p2}, Lcom/google/android/gms/internal/pal/y4;->Z(I)I

    .line 670
    .line 671
    .line 672
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 673
    .line 674
    .line 675
    iput-object p1, v2, Lo/j;->G:Ljava/lang/Object;

    .line 676
    .line 677
    new-instance p2, Lcom/google/android/gms/internal/pal/r1;

    .line 678
    .line 679
    const/16 v4, 0xb

    .line 680
    .line 681
    invoke-direct {p2, p1, v4}, Lcom/google/android/gms/internal/pal/r1;-><init>(Ljava/lang/Object;I)V

    .line 682
    .line 683
    .line 684
    iput-object p2, v2, Lo/j;->H:Ljava/lang/Object;

    .line 685
    .line 686
    iput-object v3, v2, Lo/j;->J:Ljava/lang/Object;

    .line 687
    .line 688
    iput-object v0, v2, Lo/j;->I:Ljava/lang/Object;

    .line 689
    .line 690
    iput-object v1, v2, Lo/j;->K:Ljava/lang/Object;

    .line 691
    .line 692
    goto/16 :goto_0

    .line 693
    .line 694
    :pswitch_5
    check-cast p1, Lcom/google/android/gms/internal/pal/v5;

    .line 695
    .line 696
    new-instance p2, Lcom/google/android/gms/internal/pal/E6;

    .line 697
    .line 698
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/v5;->p()Lcom/google/android/gms/internal/pal/r;

    .line 699
    .line 700
    .line 701
    move-result-object p1

    .line 702
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/r;->p()[B

    .line 703
    .line 704
    .line 705
    move-result-object p1

    .line 706
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/pal/E6;-><init>([B)V

    .line 707
    .line 708
    .line 709
    goto/16 :goto_4

    .line 710
    .line 711
    :pswitch_6
    check-cast p1, Lcom/google/android/gms/internal/pal/z6;

    .line 712
    .line 713
    new-instance p2, Lcom/google/android/gms/internal/pal/D6;

    .line 714
    .line 715
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/z6;->p()Lcom/google/android/gms/internal/pal/r;

    .line 716
    .line 717
    .line 718
    move-result-object p1

    .line 719
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/r;->p()[B

    .line 720
    .line 721
    .line 722
    move-result-object p1

    .line 723
    invoke-direct {p2, p1, v4}, Lcom/google/android/gms/internal/pal/D6;-><init>([BI)V

    .line 724
    .line 725
    .line 726
    goto/16 :goto_4

    .line 727
    .line 728
    :pswitch_7
    check-cast p1, Lcom/google/android/gms/internal/pal/v6;

    .line 729
    .line 730
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/v6;->p()Lcom/google/android/gms/internal/pal/w6;

    .line 731
    .line 732
    .line 733
    move-result-object p1

    .line 734
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/w6;->o()Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object p1

    .line 738
    invoke-static {p1}, Lcom/google/android/gms/internal/pal/y3;->a(Ljava/lang/String;)V

    .line 739
    .line 740
    .line 741
    throw p2

    .line 742
    :pswitch_8
    check-cast p1, Lcom/google/android/gms/internal/pal/s6;

    .line 743
    .line 744
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/s6;->p()Lcom/google/android/gms/internal/pal/t6;

    .line 745
    .line 746
    .line 747
    move-result-object p1

    .line 748
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/t6;->o()Ljava/lang/String;

    .line 749
    .line 750
    .line 751
    move-result-object p1

    .line 752
    invoke-static {p1}, Lcom/google/android/gms/internal/pal/y3;->a(Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    throw p2

    .line 756
    :pswitch_9
    check-cast p1, Lcom/google/android/gms/internal/pal/z5;

    .line 757
    .line 758
    new-instance p2, Lcom/google/android/gms/internal/pal/D6;

    .line 759
    .line 760
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/z5;->p()Lcom/google/android/gms/internal/pal/r;

    .line 761
    .line 762
    .line 763
    move-result-object p1

    .line 764
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/r;->p()[B

    .line 765
    .line 766
    .line 767
    move-result-object p1

    .line 768
    invoke-direct {p2, p1, v5}, Lcom/google/android/gms/internal/pal/D6;-><init>([BI)V

    .line 769
    .line 770
    .line 771
    goto/16 :goto_4

    .line 772
    .line 773
    :pswitch_a
    check-cast p1, Lcom/google/android/gms/internal/pal/r5;

    .line 774
    .line 775
    new-instance p2, Lcom/google/android/gms/internal/pal/T3;

    .line 776
    .line 777
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/r5;->p()Lcom/google/android/gms/internal/pal/r;

    .line 778
    .line 779
    .line 780
    move-result-object p1

    .line 781
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/r;->p()[B

    .line 782
    .line 783
    .line 784
    move-result-object p1

    .line 785
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/pal/T3;-><init>([B)V

    .line 786
    .line 787
    .line 788
    goto :goto_4

    .line 789
    :pswitch_b
    check-cast p1, Lcom/google/android/gms/internal/pal/n5;

    .line 790
    .line 791
    new-instance p2, Lcom/google/android/gms/internal/pal/D6;

    .line 792
    .line 793
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/n5;->p()Lcom/google/android/gms/internal/pal/r;

    .line 794
    .line 795
    .line 796
    move-result-object p1

    .line 797
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/r;->p()[B

    .line 798
    .line 799
    .line 800
    move-result-object p1

    .line 801
    invoke-direct {p2, p1, v1}, Lcom/google/android/gms/internal/pal/D6;-><init>([BI)V

    .line 802
    .line 803
    .line 804
    goto :goto_4

    .line 805
    :pswitch_c
    check-cast p1, Lcom/google/android/gms/internal/pal/h5;

    .line 806
    .line 807
    new-instance p2, Lcom/google/android/gms/internal/pal/C6;

    .line 808
    .line 809
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/h5;->q()Lcom/google/android/gms/internal/pal/r;

    .line 810
    .line 811
    .line 812
    move-result-object v0

    .line 813
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/r;->p()[B

    .line 814
    .line 815
    .line 816
    move-result-object v0

    .line 817
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/h5;->p()Lcom/google/android/gms/internal/pal/l5;

    .line 818
    .line 819
    .line 820
    move-result-object p1

    .line 821
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/l5;->m()I

    .line 822
    .line 823
    .line 824
    move-result p1

    .line 825
    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/pal/C6;-><init>([BI)V

    .line 826
    .line 827
    .line 828
    goto :goto_4

    .line 829
    :pswitch_d
    check-cast p1, Lcom/google/android/gms/internal/pal/b5;

    .line 830
    .line 831
    new-instance p2, Lcom/google/android/gms/internal/pal/B6;

    .line 832
    .line 833
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/b5;->r()Lcom/google/android/gms/internal/pal/r;

    .line 834
    .line 835
    .line 836
    move-result-object v0

    .line 837
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/r;->p()[B

    .line 838
    .line 839
    .line 840
    move-result-object v0

    .line 841
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/b5;->q()Lcom/google/android/gms/internal/pal/f5;

    .line 842
    .line 843
    .line 844
    move-result-object p1

    .line 845
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/f5;->m()I

    .line 846
    .line 847
    .line 848
    move-result p1

    .line 849
    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/pal/B6;-><init>([BI)V

    .line 850
    .line 851
    .line 852
    goto :goto_4

    .line 853
    :pswitch_e
    check-cast p1, Lcom/google/android/gms/internal/pal/W4;

    .line 854
    .line 855
    new-instance p2, Lcom/google/android/gms/internal/pal/I6;

    .line 856
    .line 857
    new-instance v0, Lcom/google/android/gms/internal/pal/M3;

    .line 858
    .line 859
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/pal/M3;-><init>(I)V

    .line 860
    .line 861
    .line 862
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/W4;->p()Lcom/google/android/gms/internal/pal/b5;

    .line 863
    .line 864
    .line 865
    move-result-object v1

    .line 866
    const-class v2, Lcom/google/android/gms/internal/pal/M6;

    .line 867
    .line 868
    invoke-virtual {v0, v1, v2}, Lk/d;->s(Lcom/google/android/gms/internal/pal/j;Ljava/lang/Class;)Ljava/lang/Object;

    .line 869
    .line 870
    .line 871
    move-result-object v0

    .line 872
    check-cast v0, Lcom/google/android/gms/internal/pal/M6;

    .line 873
    .line 874
    new-instance v1, Lcom/google/android/gms/internal/pal/M3;

    .line 875
    .line 876
    const/16 v2, 0xd

    .line 877
    .line 878
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/pal/M3;-><init>(I)V

    .line 879
    .line 880
    .line 881
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/W4;->q()Lcom/google/android/gms/internal/pal/P5;

    .line 882
    .line 883
    .line 884
    move-result-object v2

    .line 885
    const-class v3, Lcom/google/android/gms/internal/pal/z3;

    .line 886
    .line 887
    invoke-virtual {v1, v2, v3}, Lk/d;->s(Lcom/google/android/gms/internal/pal/j;Ljava/lang/Class;)Ljava/lang/Object;

    .line 888
    .line 889
    .line 890
    move-result-object v1

    .line 891
    check-cast v1, Lcom/google/android/gms/internal/pal/z3;

    .line 892
    .line 893
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/W4;->q()Lcom/google/android/gms/internal/pal/P5;

    .line 894
    .line 895
    .line 896
    move-result-object p1

    .line 897
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pal/P5;->q()Lcom/google/android/gms/internal/pal/T5;

    .line 898
    .line 899
    .line 900
    move-result-object p1

    .line 901
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 902
    .line 903
    .line 904
    invoke-direct {p2, v0, v1}, Lcom/google/android/gms/internal/pal/I6;-><init>(Lcom/google/android/gms/internal/pal/M6;Lcom/google/android/gms/internal/pal/z3;)V

    .line 905
    .line 906
    .line 907
    :goto_4
    return-object p2

    .line 908
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 909
    .line 910
    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 911
    .line 912
    .line 913
    move-result-object p2

    .line 914
    const-string v0, "Requested primitive class "

    .line 915
    .line 916
    const-string v1, " not supported."

    .line 917
    .line 918
    invoke-static {v0, p2, v1}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 919
    .line 920
    .line 921
    move-result-object p2

    .line 922
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 923
    .line 924
    .line 925
    throw p1

    .line 926
    nop

    .line 927
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
