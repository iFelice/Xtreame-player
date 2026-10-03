.class public final LP1/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final n:[Ljava/lang/String;


# instance fields
.field public final a:LP1/x;

.field public final b:Ljava/util/Map;

.field public final c:Ljava/util/Map;

.field public final d:Ljava/util/LinkedHashMap;

.field public final e:[Ljava/lang/String;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile g:Z

.field public volatile h:LT1/i;

.field public final i:LP1/j;

.field public final j:Ln/g;

.field public final k:Ljava/lang/Object;

.field public final l:Ljava/lang/Object;

.field public final m:La/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "INSERT"

    .line 2
    .line 3
    const-string v1, "UPDATE"

    .line 4
    .line 5
    const-string v2, "DELETE"

    .line 6
    .line 7
    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, LP1/l;->n:[Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public varargs constructor <init>(LP1/x;Ljava/util/HashMap;Ljava/util/HashMap;[Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "database"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, LP1/l;->a:LP1/x;

    .line 10
    .line 11
    iput-object p2, p0, LP1/l;->b:Ljava/util/Map;

    .line 12
    .line 13
    iput-object p3, p0, LP1/l;->c:Ljava/util/Map;

    .line 14
    .line 15
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    const/4 p3, 0x0

    .line 18
    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, LP1/l;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    new-instance p2, LP1/j;

    .line 24
    .line 25
    array-length v0, p4

    .line 26
    invoke-direct {p2, v0}, LP1/j;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, LP1/l;->i:LP1/j;

    .line 30
    .line 31
    new-instance p2, Lm2/c;

    .line 32
    .line 33
    const/4 v0, 0x7

    .line 34
    invoke-direct {p2, p1, v0}, Lm2/c;-><init>(LP1/x;I)V

    .line 35
    .line 36
    .line 37
    new-instance p1, Ln/g;

    .line 38
    .line 39
    invoke-direct {p1}, Ln/g;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, LP1/l;->j:Ln/g;

    .line 43
    .line 44
    new-instance p1, Ljava/lang/Object;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, LP1/l;->k:Ljava/lang/Object;

    .line 50
    .line 51
    new-instance p1, Ljava/lang/Object;

    .line 52
    .line 53
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, LP1/l;->l:Ljava/lang/Object;

    .line 57
    .line 58
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 59
    .line 60
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, LP1/l;->d:Ljava/util/LinkedHashMap;

    .line 64
    .line 65
    array-length p1, p4

    .line 66
    new-array p2, p1, [Ljava/lang/String;

    .line 67
    .line 68
    :goto_0
    const-string v0, "this as java.lang.String).toLowerCase(locale)"

    .line 69
    .line 70
    const-string v1, "US"

    .line 71
    .line 72
    if-ge p3, p1, :cond_2

    .line 73
    .line 74
    aget-object v2, p4, p3

    .line 75
    .line 76
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 77
    .line 78
    invoke-static {v3, v1}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-static {v1, v0}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    iget-object v4, p0, LP1/l;->d:Ljava/util/LinkedHashMap;

    .line 93
    .line 94
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    iget-object v2, p0, LP1/l;->b:Ljava/util/Map;

    .line 98
    .line 99
    aget-object v4, p4, p3

    .line 100
    .line 101
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Ljava/lang/String;

    .line 106
    .line 107
    if-eqz v2, :cond_0

    .line 108
    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-static {v2, v0}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_0
    const/4 v2, 0x0

    .line 118
    :goto_1
    if-nez v2, :cond_1

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_1
    move-object v1, v2

    .line 122
    :goto_2
    aput-object v1, p2, p3

    .line 123
    .line 124
    add-int/lit8 p3, p3, 0x1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_2
    iput-object p2, p0, LP1/l;->e:[Ljava/lang/String;

    .line 128
    .line 129
    iget-object p1, p0, LP1/l;->b:Ljava/util/Map;

    .line 130
    .line 131
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    :cond_3
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    if-eqz p2, :cond_6

    .line 144
    .line 145
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    check-cast p2, Ljava/util/Map$Entry;

    .line 150
    .line 151
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p3

    .line 155
    check-cast p3, Ljava/lang/String;

    .line 156
    .line 157
    sget-object p4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 158
    .line 159
    invoke-static {p4, v1}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p3, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p3

    .line 166
    invoke-static {p3, v0}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object v2, p0, LP1/l;->d:Ljava/util/LinkedHashMap;

    .line 170
    .line 171
    invoke-interface {v2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-eqz v2, :cond_3

    .line 176
    .line 177
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    check-cast p2, Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {p2, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    invoke-static {p2, v0}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    iget-object p4, p0, LP1/l;->d:Ljava/util/LinkedHashMap;

    .line 191
    .line 192
    const-string v2, "<this>"

    .line 193
    .line 194
    invoke-static {p4, v2}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p4, p3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    if-nez v2, :cond_5

    .line 202
    .line 203
    invoke-interface {p4, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    if-eqz v3, :cond_4

    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_4
    new-instance p1, Ljava/util/NoSuchElementException;

    .line 211
    .line 212
    new-instance p2, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    const-string p4, "Key "

    .line 215
    .line 216
    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string p3, " is missing in the map."

    .line 223
    .line 224
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p2

    .line 231
    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw p1

    .line 235
    :cond_5
    :goto_4
    invoke-interface {p4, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_6
    new-instance p1, La/f;

    .line 240
    .line 241
    const/16 p2, 0xe

    .line 242
    .line 243
    invoke-direct {p1, p0, p2}, La/f;-><init>(Ljava/lang/Object;I)V

    .line 244
    .line 245
    .line 246
    iput-object p1, p0, LP1/l;->m:La/f;

    .line 247
    .line 248
    return-void
.end method


# virtual methods
.method public final a(LP1/n;)V
    .locals 10

    .line 1
    iget-object v0, p1, LP1/n;->a:[Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Lv6/i;

    .line 4
    .line 5
    invoke-direct {v1}, Lv6/i;-><init>()V

    .line 6
    .line 7
    .line 8
    array-length v2, v0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    :goto_0
    if-ge v4, v2, :cond_1

    .line 12
    .line 13
    aget-object v5, v0, v4

    .line 14
    .line 15
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 16
    .line 17
    const-string v7, "US"

    .line 18
    .line 19
    invoke-static {v6, v7}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    const-string v8, "this as java.lang.String).toLowerCase(locale)"

    .line 27
    .line 28
    invoke-static {v7, v8}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v9, p0, LP1/l;->c:Ljava/util/Map;

    .line 32
    .line 33
    invoke-interface {v9, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-eqz v7, :cond_0

    .line 38
    .line 39
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-static {v5, v8}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-static {v5}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    check-cast v5, Ljava/util/Collection;

    .line 54
    .line 55
    invoke-virtual {v1, v5}, Lv6/i;->addAll(Ljava/util/Collection;)Z

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    invoke-virtual {v1, v5}, Lv6/i;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-static {v1}, Ly4/k;->j(Lv6/i;)Lv6/i;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    new-array v1, v3, [Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 76
    .line 77
    invoke-static {v0, v1}, Lz4/q0;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    check-cast v0, [Ljava/lang/String;

    .line 81
    .line 82
    new-instance v1, Ljava/util/ArrayList;

    .line 83
    .line 84
    array-length v2, v0

    .line 85
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    .line 87
    .line 88
    array-length v2, v0

    .line 89
    const/4 v4, 0x0

    .line 90
    :goto_2
    if-ge v4, v2, :cond_3

    .line 91
    .line 92
    aget-object v5, v0, v4

    .line 93
    .line 94
    iget-object v6, p0, LP1/l;->d:Ljava/util/LinkedHashMap;

    .line 95
    .line 96
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 97
    .line 98
    const-string v8, "US"

    .line 99
    .line 100
    invoke-static {v7, v8}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    const-string v8, "this as java.lang.String).toLowerCase(locale)"

    .line 108
    .line 109
    invoke-static {v7, v8}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    check-cast v6, Ljava/lang/Integer;

    .line 117
    .line 118
    if-eqz v6, :cond_2

    .line 119
    .line 120
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    add-int/lit8 v4, v4, 0x1

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 127
    .line 128
    const-string v0, "There is no table with name "

    .line 129
    .line 130
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p1

    .line 138
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    new-array v4, v2, [I

    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-eqz v5, :cond_4

    .line 153
    .line 154
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    check-cast v5, Ljava/lang/Number;

    .line 159
    .line 160
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    add-int/lit8 v6, v3, 0x1

    .line 165
    .line 166
    aput v5, v4, v3

    .line 167
    .line 168
    move v3, v6

    .line 169
    goto :goto_3

    .line 170
    :cond_4
    new-instance v1, LP1/k;

    .line 171
    .line 172
    invoke-direct {v1, p1, v4, v0}, LP1/k;-><init>(LP1/n;[I[Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, LP1/l;->j:Ln/g;

    .line 176
    .line 177
    monitor-enter v0

    .line 178
    :try_start_0
    iget-object v3, p0, LP1/l;->j:Ln/g;

    .line 179
    .line 180
    invoke-virtual {v3, p1}, Ln/g;->b(Ljava/lang/Object;)Ln/c;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    if-eqz v5, :cond_5

    .line 185
    .line 186
    iget-object p1, v5, Ln/c;->H:Ljava/lang/Object;

    .line 187
    .line 188
    goto :goto_5

    .line 189
    :cond_5
    new-instance v5, Ln/c;

    .line 190
    .line 191
    invoke-direct {v5, p1, v1}, Ln/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    iget p1, v3, Ln/g;->J:I

    .line 195
    .line 196
    add-int/lit8 p1, p1, 0x1

    .line 197
    .line 198
    iput p1, v3, Ln/g;->J:I

    .line 199
    .line 200
    iget-object p1, v3, Ln/g;->H:Ln/c;

    .line 201
    .line 202
    if-nez p1, :cond_6

    .line 203
    .line 204
    iput-object v5, v3, Ln/g;->G:Ln/c;

    .line 205
    .line 206
    iput-object v5, v3, Ln/g;->H:Ln/c;

    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_6
    iput-object v5, p1, Ln/c;->I:Ln/c;

    .line 210
    .line 211
    iput-object p1, v5, Ln/c;->J:Ln/c;

    .line 212
    .line 213
    iput-object v5, v3, Ln/g;->H:Ln/c;

    .line 214
    .line 215
    :goto_4
    const/4 p1, 0x0

    .line 216
    :goto_5
    check-cast p1, LP1/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    .line 218
    monitor-exit v0

    .line 219
    if-nez p1, :cond_8

    .line 220
    .line 221
    iget-object p1, p0, LP1/l;->i:LP1/j;

    .line 222
    .line 223
    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([II)[I

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {p1, v0}, LP1/j;->b([I)Z

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    if-eqz p1, :cond_8

    .line 232
    .line 233
    iget-object p1, p0, LP1/l;->a:LP1/x;

    .line 234
    .line 235
    invoke-virtual {p1}, LP1/x;->k()Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-nez v0, :cond_7

    .line 240
    .line 241
    goto :goto_6

    .line 242
    :cond_7
    invoke-virtual {p1}, LP1/x;->g()LT1/f;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-interface {p1}, LT1/f;->getWritableDatabase()LT1/b;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    invoke-virtual {p0, p1}, LP1/l;->d(LT1/b;)V

    .line 251
    .line 252
    .line 253
    :cond_8
    :goto_6
    return-void

    .line 254
    :catchall_0
    move-exception p1

    .line 255
    monitor-exit v0

    .line 256
    throw p1
.end method

.method public final b()Z
    .locals 3

    .line 1
    iget-object v0, p0, LP1/l;->a:LP1/x;

    .line 2
    .line 3
    invoke-virtual {v0}, LP1/x;->k()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-boolean v0, p0, LP1/l;->g:Z

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, LP1/l;->a:LP1/x;

    .line 16
    .line 17
    invoke-virtual {v0}, LP1/x;->g()LT1/f;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, LT1/f;->getWritableDatabase()LT1/b;

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-boolean v0, p0, LP1/l;->g:Z

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    const-string v0, "ROOM"

    .line 29
    .line 30
    const-string v2, "database is not initialized even though it is open"

    .line 31
    .line 32
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return v1

    .line 36
    :cond_2
    const/4 v0, 0x1

    .line 37
    return v0
.end method

.method public final c(LT1/b;I)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "INSERT OR IGNORE INTO room_table_modification_log VALUES("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ", 0)"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {p1, v0}, LT1/b;->f(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, LP1/l;->e:[Ljava/lang/String;

    .line 24
    .line 25
    aget-object v0, v0, p2

    .line 26
    .line 27
    sget-object v1, LP1/l;->n:[Ljava/lang/String;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    :goto_0
    const/4 v3, 0x3

    .line 31
    if-ge v2, v3, :cond_0

    .line 32
    .line 33
    aget-object v3, v1, v2

    .line 34
    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v5, "CREATE TEMP TRIGGER IF NOT EXISTS "

    .line 38
    .line 39
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v3}, LF2/G;->G(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v5, " AFTER "

    .line 50
    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v3, " ON `"

    .line 58
    .line 59
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v3, "` BEGIN UPDATE room_table_modification_log SET invalidated = 1 WHERE table_id = "

    .line 66
    .line 67
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v3, " AND invalidated = 0; END"

    .line 74
    .line 75
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    const-string v4, "StringBuilder().apply(builderAction).toString()"

    .line 83
    .line 84
    invoke-static {v3, v4}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-interface {p1, v3}, LT1/b;->f(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    add-int/lit8 v2, v2, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method

.method public final d(LT1/b;)V
    .locals 13

    .line 1
    const-string v0, "database"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, LT1/b;->L()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    :try_start_0
    iget-object v0, p0, LP1/l;->a:LP1/x;

    .line 14
    .line 15
    iget-object v0, v0, LP1/x;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "readWriteLock.readLock()"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    :try_start_1
    iget-object v1, p0, LP1/l;->k:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :try_start_2
    iget-object v2, p0, LP1/l;->i:LP1/j;

    .line 33
    .line 34
    invoke-virtual {v2}, LP1/j;->a()[I

    .line 35
    .line 36
    .line 37
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 41
    :try_start_4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catch_0
    move-exception p1

    .line 46
    goto/16 :goto_7

    .line 47
    .line 48
    :catch_1
    move-exception p1

    .line 49
    goto/16 :goto_8

    .line 50
    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_6

    .line 53
    :cond_1
    :try_start_5
    invoke-interface {p1}, LT1/b;->P()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    invoke-interface {p1}, LT1/b;->z()V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-interface {p1}, LT1/b;->c()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 64
    .line 65
    .line 66
    :goto_0
    :try_start_6
    array-length v3, v2

    .line 67
    const/4 v4, 0x0

    .line 68
    const/4 v5, 0x0

    .line 69
    const/4 v6, 0x0

    .line 70
    :goto_1
    if-ge v5, v3, :cond_6

    .line 71
    .line 72
    aget v7, v2, v5

    .line 73
    .line 74
    add-int/lit8 v8, v6, 0x1

    .line 75
    .line 76
    const/4 v9, 0x1

    .line 77
    if-eq v7, v9, :cond_4

    .line 78
    .line 79
    const/4 v9, 0x2

    .line 80
    if-eq v7, v9, :cond_3

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_3
    iget-object v7, p0, LP1/l;->e:[Ljava/lang/String;

    .line 84
    .line 85
    aget-object v6, v7, v6

    .line 86
    .line 87
    sget-object v7, LP1/l;->n:[Ljava/lang/String;

    .line 88
    .line 89
    const/4 v9, 0x0

    .line 90
    :goto_2
    const/4 v10, 0x3

    .line 91
    if-ge v9, v10, :cond_5

    .line 92
    .line 93
    aget-object v10, v7, v9

    .line 94
    .line 95
    new-instance v11, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string v12, "DROP TRIGGER IF EXISTS "

    .line 98
    .line 99
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v6, v10}, LF2/G;->G(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    const-string v11, "StringBuilder().apply(builderAction).toString()"

    .line 114
    .line 115
    invoke-static {v10, v11}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-interface {p1, v10}, LT1/b;->f(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    add-int/lit8 v9, v9, 0x1

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_4
    invoke-virtual {p0, p1, v6}, LP1/l;->c(LT1/b;I)V

    .line 125
    .line 126
    .line 127
    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 128
    .line 129
    move v6, v8

    .line 130
    goto :goto_1

    .line 131
    :catchall_1
    move-exception v2

    .line 132
    goto :goto_4

    .line 133
    :cond_6
    invoke-interface {p1}, LT1/b;->x()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 134
    .line 135
    .line 136
    :try_start_7
    invoke-interface {p1}, LT1/b;->D()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 137
    .line 138
    .line 139
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 140
    :try_start_9
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_0

    .line 141
    .line 142
    .line 143
    goto :goto_9

    .line 144
    :catchall_2
    move-exception p1

    .line 145
    goto :goto_5

    .line 146
    :goto_4
    :try_start_a
    invoke-interface {p1}, LT1/b;->D()V

    .line 147
    .line 148
    .line 149
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 150
    :goto_5
    :try_start_b
    monitor-exit v1

    .line 151
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 152
    :goto_6
    :try_start_c
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 153
    .line 154
    .line 155
    throw p1
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_0

    .line 156
    :goto_7
    const-string v0, "ROOM"

    .line 157
    .line 158
    const-string v1, "Cannot run invalidation tracker. Is the db closed?"

    .line 159
    .line 160
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    .line 162
    .line 163
    goto :goto_9

    .line 164
    :goto_8
    const-string v0, "ROOM"

    .line 165
    .line 166
    const-string v1, "Cannot run invalidation tracker. Is the db closed?"

    .line 167
    .line 168
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    .line 170
    .line 171
    :goto_9
    return-void
.end method
