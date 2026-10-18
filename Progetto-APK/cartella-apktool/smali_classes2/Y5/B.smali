.class public final LY5/B;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/util/List;

.field public static final e:LY5/B;

.field public static final f:LY5/B;

.field public static final g:LY5/B;

.field public static final h:LY5/B;

.field public static final i:LY5/B;

.field public static final j:LY5/B;

.field public static final k:LY5/B;


# instance fields
.field public final a:LY5/z;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, LY5/z;->values()[LY5/z;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    array-length v2, v1

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    :goto_0
    if-ge v4, v2, :cond_1

    .line 14
    .line 15
    aget-object v5, v1, v4

    .line 16
    .line 17
    iget v6, v5, LY5/z;->G:I

    .line 18
    .line 19
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    new-instance v7, LY5/B;

    .line 24
    .line 25
    const/4 v8, 0x0

    .line 26
    invoke-direct {v7, v5, v8, v8}, LY5/B;-><init>(LY5/z;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    check-cast v6, LY5/B;

    .line 34
    .line 35
    if-nez v6, :cond_0

    .line 36
    .line 37
    add-int/lit8 v4, v4, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v2, "Code value duplication between "

    .line 45
    .line 46
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v2, v6, LY5/B;->a:LY5/z;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v2, " & "

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v0

    .line 78
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sput-object v0, LY5/B;->d:Ljava/util/List;

    .line 92
    .line 93
    sget-object v0, LY5/z;->H:LY5/z;

    .line 94
    .line 95
    invoke-virtual {v0}, LY5/z;->a()LY5/B;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    sput-object v0, LY5/B;->e:LY5/B;

    .line 100
    .line 101
    sget-object v0, LY5/z;->I:LY5/z;

    .line 102
    .line 103
    invoke-virtual {v0}, LY5/z;->a()LY5/B;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    sput-object v0, LY5/B;->f:LY5/B;

    .line 108
    .line 109
    sget-object v0, LY5/z;->J:LY5/z;

    .line 110
    .line 111
    invoke-virtual {v0}, LY5/z;->a()LY5/B;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    sput-object v0, LY5/B;->g:LY5/B;

    .line 116
    .line 117
    sget-object v0, LY5/z;->K:LY5/z;

    .line 118
    .line 119
    invoke-virtual {v0}, LY5/z;->a()LY5/B;

    .line 120
    .line 121
    .line 122
    sget-object v0, LY5/z;->L:LY5/z;

    .line 123
    .line 124
    invoke-virtual {v0}, LY5/z;->a()LY5/B;

    .line 125
    .line 126
    .line 127
    sget-object v0, LY5/z;->M:LY5/z;

    .line 128
    .line 129
    invoke-virtual {v0}, LY5/z;->a()LY5/B;

    .line 130
    .line 131
    .line 132
    sget-object v0, LY5/z;->N:LY5/z;

    .line 133
    .line 134
    invoke-virtual {v0}, LY5/z;->a()LY5/B;

    .line 135
    .line 136
    .line 137
    sget-object v0, LY5/z;->O:LY5/z;

    .line 138
    .line 139
    invoke-virtual {v0}, LY5/z;->a()LY5/B;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    sput-object v0, LY5/B;->h:LY5/B;

    .line 144
    .line 145
    sget-object v0, LY5/z;->X:LY5/z;

    .line 146
    .line 147
    invoke-virtual {v0}, LY5/z;->a()LY5/B;

    .line 148
    .line 149
    .line 150
    sget-object v0, LY5/z;->P:LY5/z;

    .line 151
    .line 152
    invoke-virtual {v0}, LY5/z;->a()LY5/B;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    sput-object v0, LY5/B;->i:LY5/B;

    .line 157
    .line 158
    sget-object v0, LY5/z;->Q:LY5/z;

    .line 159
    .line 160
    invoke-virtual {v0}, LY5/z;->a()LY5/B;

    .line 161
    .line 162
    .line 163
    sget-object v0, LY5/z;->R:LY5/z;

    .line 164
    .line 165
    invoke-virtual {v0}, LY5/z;->a()LY5/B;

    .line 166
    .line 167
    .line 168
    sget-object v0, LY5/z;->S:LY5/z;

    .line 169
    .line 170
    invoke-virtual {v0}, LY5/z;->a()LY5/B;

    .line 171
    .line 172
    .line 173
    sget-object v0, LY5/z;->T:LY5/z;

    .line 174
    .line 175
    invoke-virtual {v0}, LY5/z;->a()LY5/B;

    .line 176
    .line 177
    .line 178
    sget-object v0, LY5/z;->U:LY5/z;

    .line 179
    .line 180
    invoke-virtual {v0}, LY5/z;->a()LY5/B;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    sput-object v0, LY5/B;->j:LY5/B;

    .line 185
    .line 186
    sget-object v0, LY5/z;->V:LY5/z;

    .line 187
    .line 188
    invoke-virtual {v0}, LY5/z;->a()LY5/B;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    sput-object v0, LY5/B;->k:LY5/B;

    .line 193
    .line 194
    sget-object v0, LY5/z;->W:LY5/z;

    .line 195
    .line 196
    invoke-virtual {v0}, LY5/z;->a()LY5/B;

    .line 197
    .line 198
    .line 199
    new-instance v0, LY5/A;

    .line 200
    .line 201
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 202
    .line 203
    .line 204
    new-instance v1, LY5/s;

    .line 205
    .line 206
    const-string v2, "grpc-status"

    .line 207
    .line 208
    invoke-direct {v1, v2, v3, v0}, LY5/s;-><init>(Ljava/lang/String;ZLY5/t;)V

    .line 209
    .line 210
    .line 211
    new-instance v0, LY5/A;

    .line 212
    .line 213
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 214
    .line 215
    .line 216
    new-instance v1, LY5/s;

    .line 217
    .line 218
    const-string v2, "grpc-message"

    .line 219
    .line 220
    invoke-direct {v1, v2, v3, v0}, LY5/s;-><init>(Ljava/lang/String;ZLY5/t;)V

    .line 221
    .line 222
    .line 223
    return-void
.end method

.method public constructor <init>(LY5/z;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "code"

    .line 5
    .line 6
    invoke-static {p1, v0}, Ly4/k;->s(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, LY5/B;->a:LY5/z;

    .line 10
    .line 11
    iput-object p2, p0, LY5/B;->b:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p3, p0, LY5/B;->c:Ljava/lang/Throwable;

    .line 14
    .line 15
    return-void
.end method

.method public static b(LY5/B;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, LY5/B;->b:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, LY5/B;->a:LY5/z;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ": "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, LY5/B;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public static c(I)LY5/B;
    .locals 2

    .line 1
    if-ltz p0, :cond_1

    .line 2
    .line 3
    sget-object v0, LY5/B;->d:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lt p0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, LY5/B;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "Unknown code "

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    sget-object v0, LY5/B;->g:LY5/B;

    .line 34
    .line 35
    invoke-virtual {v0, p0}, LY5/B;->f(Ljava/lang/String;)LY5/B;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)LY5/B;
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    iget-object v0, p0, LY5/B;->c:Ljava/lang/Throwable;

    .line 5
    .line 6
    iget-object v1, p0, LY5/B;->a:LY5/z;

    .line 7
    .line 8
    iget-object v2, p0, LY5/B;->b:Ljava/lang/String;

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    new-instance v2, LY5/B;

    .line 13
    .line 14
    invoke-direct {v2, v1, p1, v0}, LY5/B;-><init>(LY5/z;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    return-object v2

    .line 18
    :cond_1
    new-instance v3, LY5/B;

    .line 19
    .line 20
    const-string v4, "\n"

    .line 21
    .line 22
    invoke-static {v2, v4, p1}, Lcom/google/protobuf/U2;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {v3, v1, p1, v0}, LY5/B;-><init>(LY5/z;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    return-object v3
.end method

.method public final d()Z
    .locals 2

    .line 1
    sget-object v0, LY5/z;->H:LY5/z;

    .line 2
    .line 3
    iget-object v1, p0, LY5/B;->a:LY5/z;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public final e(Ljava/lang/Throwable;)LY5/B;
    .locals 3

    .line 1
    iget-object v0, p0, LY5/B;->c:Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-static {v0, p1}, La7/b;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, LY5/B;

    .line 11
    .line 12
    iget-object v1, p0, LY5/B;->a:LY5/z;

    .line 13
    .line 14
    iget-object v2, p0, LY5/B;->b:Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct {v0, v1, v2, p1}, LY5/B;-><init>(LY5/z;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final f(Ljava/lang/String;)LY5/B;
    .locals 3

    .line 1
    iget-object v0, p0, LY5/B;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0, p1}, La7/b;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, LY5/B;

    .line 11
    .line 12
    iget-object v1, p0, LY5/B;->a:LY5/z;

    .line 13
    .line 14
    iget-object v2, p0, LY5/B;->c:Ljava/lang/Throwable;

    .line 15
    .line 16
    invoke-direct {v0, v1, p1, v2}, LY5/B;-><init>(LY5/z;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Cw;->n(Ljava/lang/Object;)Lo3/G;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, LY5/B;->a:LY5/z;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "code"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lo3/G;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "description"

    .line 17
    .line 18
    iget-object v2, p0, LY5/B;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v2, v1}, Lo3/G;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, LY5/B;->c:Ljava/lang/Throwable;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    sget-object v2, Ly4/x;->a:Ljava/lang/Object;

    .line 28
    .line 29
    new-instance v2, Ljava/io/StringWriter;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v3, Ljava/io/PrintWriter;

    .line 35
    .line 36
    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :cond_0
    const-string v2, "cause"

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Lo3/G;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lo3/G;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
