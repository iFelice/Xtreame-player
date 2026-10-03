.class public final Lv3/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public final c:Lcom/google/android/gms/internal/ads/Wc;

.field public final d:Landroid/os/Bundle;

.field public final e:J

.field public final f:J


# direct methods
.method public constructor <init>(Landroid/util/JsonReader;Lcom/google/android/gms/internal/ads/Wc;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Bundle;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lv3/r;->d:Landroid/os/Bundle;

    .line 10
    .line 11
    const-wide/16 v0, -0x1

    .line 12
    .line 13
    iput-wide v0, p0, Lv3/r;->e:J

    .line 14
    .line 15
    iput-wide v0, p0, Lv3/r;->f:J

    .line 16
    .line 17
    iput-object p2, p0, Lv3/r;->c:Lcom/google/android/gms/internal/ads/Wc;

    .line 18
    .line 19
    new-instance p2, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 25
    .line 26
    .line 27
    const-string v0, ""

    .line 28
    .line 29
    move-object v1, v0

    .line 30
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_7

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    move-object v2, v0

    .line 43
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    const/4 v4, 0x3

    .line 48
    const/4 v5, 0x2

    .line 49
    const/4 v6, 0x1

    .line 50
    sparse-switch v3, :sswitch_data_0

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :sswitch_0
    const-string v3, "end_time"

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    const/4 v2, 0x3

    .line 63
    goto :goto_2

    .line 64
    :sswitch_1
    const-string v3, "signal_dictionary"

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_1

    .line 71
    .line 72
    const/4 v2, 0x1

    .line 73
    goto :goto_2

    .line 74
    :sswitch_2
    const-string v3, "params"

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_1

    .line 81
    .line 82
    const/4 v2, 0x0

    .line 83
    goto :goto_2

    .line 84
    :sswitch_3
    const-string v3, "start_time"

    .line 85
    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_1

    .line 91
    .line 92
    const/4 v2, 0x2

    .line 93
    goto :goto_2

    .line 94
    :cond_1
    :goto_1
    const/4 v2, -0x1

    .line 95
    :goto_2
    if-eqz v2, :cond_6

    .line 96
    .line 97
    if-eq v2, v6, :cond_4

    .line 98
    .line 99
    if-eq v2, v5, :cond_3

    .line 100
    .line 101
    if-eq v2, v4, :cond_2

    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    .line 108
    .line 109
    .line 110
    move-result-wide v2

    .line 111
    iput-wide v2, p0, Lv3/r;->f:J

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    .line 115
    .line 116
    .line 117
    move-result-wide v2

    .line 118
    iput-wide v2, p0, Lv3/r;->e:J

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_4
    new-instance p2, Ljava/util/HashMap;

    .line 122
    .line 123
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 127
    .line 128
    .line 129
    :goto_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-eqz v2, :cond_5

    .line 134
    .line 135
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_5
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_6
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    goto :goto_0

    .line 156
    :cond_7
    iput-object v1, p0, Lv3/r;->a:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 159
    .line 160
    .line 161
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    :cond_8
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    .line 171
    .line 172
    move-result p2

    .line 173
    if-eqz p2, :cond_9

    .line 174
    .line 175
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    check-cast p2, Ljava/util/Map$Entry;

    .line 180
    .line 181
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    if-eqz v0, :cond_8

    .line 186
    .line 187
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    if-eqz v0, :cond_8

    .line 192
    .line 193
    iget-object v0, p0, Lv3/r;->d:Landroid/os/Bundle;

    .line 194
    .line 195
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    check-cast v1, Ljava/lang/String;

    .line 200
    .line 201
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    check-cast p2, Ljava/lang/String;

    .line 206
    .line 207
    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_9
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->U1:Lcom/google/android/gms/internal/ads/J7;

    .line 212
    .line 213
    sget-object p2, Ll3/q;->d:Ll3/q;

    .line 214
    .line 215
    iget-object p2, p2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 216
    .line 217
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    check-cast p1, Ljava/lang/Boolean;

    .line 222
    .line 223
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    if-eqz p1, :cond_a

    .line 228
    .line 229
    iget-object p1, p0, Lv3/r;->c:Lcom/google/android/gms/internal/ads/Wc;

    .line 230
    .line 231
    if-eqz p1, :cond_a

    .line 232
    .line 233
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Wc;->S:Landroid/os/Bundle;

    .line 234
    .line 235
    if-eqz p1, :cond_a

    .line 236
    .line 237
    iget-wide v0, p0, Lv3/r;->e:J

    .line 238
    .line 239
    const-string p2, "get-signals-sdkcore-start"

    .line 240
    .line 241
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 242
    .line 243
    .line 244
    iget-object p1, p0, Lv3/r;->c:Lcom/google/android/gms/internal/ads/Wc;

    .line 245
    .line 246
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Wc;->S:Landroid/os/Bundle;

    .line 247
    .line 248
    iget-wide v0, p0, Lv3/r;->f:J

    .line 249
    .line 250
    const-string p2, "get-signals-sdkcore-end"

    .line 251
    .line 252
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 253
    .line 254
    .line 255
    :cond_a
    return-void

    .line 256
    nop

    .line 257
    :sswitch_data_0
    .sparse-switch
        -0x5dc44b76 -> :sswitch_3
        -0x3b55067a -> :sswitch_2
        -0x102de173 -> :sswitch_1
        0x66d9d3b1 -> :sswitch_0
    .end sparse-switch
.end method
