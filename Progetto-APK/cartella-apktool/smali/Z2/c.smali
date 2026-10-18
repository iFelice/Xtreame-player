.class public final LZ2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW2/b;


# instance fields
.field public final synthetic G:I

.field public final H:Ls6/a;


# direct methods
.method public synthetic constructor <init>(Ls6/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, LZ2/c;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LZ2/c;->H:Ls6/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, LZ2/c;->G:I

    .line 3
    .line 4
    iget-object v2, p0, LZ2/c;->H:Ls6/a;

    .line 5
    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-interface {v2}, Ls6/a;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 23
    .line 24
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :pswitch_0
    invoke-interface {v2}, Ls6/a;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ld3/a;

    .line 35
    .line 36
    new-instance v2, Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 39
    .line 40
    .line 41
    sget-object v3, LR2/c;->G:LR2/c;

    .line 42
    .line 43
    new-instance v4, La3/b;

    .line 44
    .line 45
    invoke-direct {v4, v0}, La3/b;-><init>(I)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    const-string v6, "Null flags"

    .line 53
    .line 54
    if-eqz v5, :cond_6

    .line 55
    .line 56
    iput-object v5, v4, La3/b;->J:Ljava/lang/Object;

    .line 57
    .line 58
    const-wide/16 v7, 0x7530

    .line 59
    .line 60
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    iput-object v5, v4, La3/b;->H:Ljava/lang/Object;

    .line 65
    .line 66
    const-wide/32 v7, 0x5265c00

    .line 67
    .line 68
    .line 69
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    iput-object v5, v4, La3/b;->I:Ljava/lang/Object;

    .line 74
    .line 75
    invoke-virtual {v4}, La3/b;->d()La3/c;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    sget-object v3, LR2/c;->I:LR2/c;

    .line 83
    .line 84
    new-instance v4, La3/b;

    .line 85
    .line 86
    invoke-direct {v4, v0}, La3/b;-><init>(I)V

    .line 87
    .line 88
    .line 89
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    if-eqz v5, :cond_5

    .line 94
    .line 95
    iput-object v5, v4, La3/b;->J:Ljava/lang/Object;

    .line 96
    .line 97
    const-wide/16 v9, 0x3e8

    .line 98
    .line 99
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    iput-object v5, v4, La3/b;->H:Ljava/lang/Object;

    .line 104
    .line 105
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    iput-object v5, v4, La3/b;->I:Ljava/lang/Object;

    .line 110
    .line 111
    invoke-virtual {v4}, La3/b;->d()La3/c;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    sget-object v3, LR2/c;->H:LR2/c;

    .line 119
    .line 120
    new-instance v4, La3/b;

    .line 121
    .line 122
    invoke-direct {v4, v0}, La3/b;-><init>(I)V

    .line 123
    .line 124
    .line 125
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    if-eqz v5, :cond_4

    .line 130
    .line 131
    iput-object v5, v4, La3/b;->J:Ljava/lang/Object;

    .line 132
    .line 133
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    iput-object v5, v4, La3/b;->H:Ljava/lang/Object;

    .line 138
    .line 139
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    iput-object v5, v4, La3/b;->I:Ljava/lang/Object;

    .line 144
    .line 145
    const/4 v5, 0x1

    .line 146
    new-array v5, v5, [La3/e;

    .line 147
    .line 148
    sget-object v7, La3/e;->H:La3/e;

    .line 149
    .line 150
    aput-object v7, v5, v0

    .line 151
    .line 152
    new-instance v0, Ljava/util/HashSet;

    .line 153
    .line 154
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 159
    .line 160
    .line 161
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    if-eqz v0, :cond_3

    .line 166
    .line 167
    iput-object v0, v4, La3/b;->J:Ljava/lang/Object;

    .line 168
    .line 169
    invoke-virtual {v4}, La3/b;->d()La3/c;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    if-eqz v1, :cond_2

    .line 177
    .line 178
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    invoke-static {}, LR2/c;->values()[LR2/c;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    array-length v3, v3

    .line 191
    if-lt v0, v3, :cond_1

    .line 192
    .line 193
    new-instance v0, Ljava/util/HashMap;

    .line 194
    .line 195
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 196
    .line 197
    .line 198
    new-instance v0, La3/a;

    .line 199
    .line 200
    invoke-direct {v0, v1, v2}, La3/a;-><init>(Ld3/a;Ljava/util/Map;)V

    .line 201
    .line 202
    .line 203
    return-object v0

    .line 204
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 205
    .line 206
    const-string v1, "Not all priorities have been configured"

    .line 207
    .line 208
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw v0

    .line 212
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    .line 213
    .line 214
    const-string v1, "missing required property: clock"

    .line 215
    .line 216
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw v0

    .line 220
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    .line 221
    .line 222
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    throw v0

    .line 226
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    .line 227
    .line 228
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw v0

    .line 232
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    .line 233
    .line 234
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    throw v0

    .line 238
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    .line 239
    .line 240
    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    throw v0

    .line 244
    nop

    .line 245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
