.class public final synthetic Lcom/google/android/gms/internal/ads/Ta;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/vz;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/Ta;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ta;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Ta;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Ta;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ta;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ta;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v2, Lcom/google/android/gms/internal/ads/sp;

    .line 11
    .line 12
    check-cast v1, Lcom/google/android/gms/internal/ads/Wc;

    .line 13
    .line 14
    check-cast p1, Lcom/google/android/gms/internal/ads/Ip;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Ip;->c:Ljava/util/Map;

    .line 20
    .line 21
    const-string v3, "Content-Type"

    .line 22
    .line 23
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/Ip;->e:Ljava/lang/String;

    .line 24
    .line 25
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 29
    .line 30
    iget-object v0, v0, Lk3/l;->c:Lo3/O;

    .line 31
    .line 32
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Wc;->H:Lp3/a;

    .line 33
    .line 34
    iget-object v3, v3, Lp3/a;->G:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/sp;->h:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {v0, v2, v3}, Lo3/O;->w(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/Ip;->c:Ljava/util/Map;

    .line 43
    .line 44
    const-string v3, "User-Agent"

    .line 45
    .line 46
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    new-instance v0, Lcom/google/android/gms/internal/ads/Jc;

    .line 50
    .line 51
    new-instance v7, Landroid/os/Bundle;

    .line 52
    .line 53
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_0

    .line 69
    .line 70
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Ljava/util/Map$Entry;

    .line 75
    .line 76
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    check-cast v4, Ljava/lang/String;

    .line 81
    .line 82
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    check-cast v3, Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v7, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    iget-object v8, p1, Lcom/google/android/gms/internal/ads/Ip;->d:[B

    .line 93
    .line 94
    iget-boolean v9, p1, Lcom/google/android/gms/internal/ads/Ip;->f:Z

    .line 95
    .line 96
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/Ip;->a:Ljava/lang/String;

    .line 97
    .line 98
    iget v6, p1, Lcom/google/android/gms/internal/ads/Ip;->b:I

    .line 99
    .line 100
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/Wc;->J:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/Wc;->N:Ljava/lang/String;

    .line 103
    .line 104
    move-object v4, v0

    .line 105
    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/internal/ads/Jc;-><init>(Ljava/lang/String;ILandroid/os/Bundle;[BZLjava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-object v0

    .line 109
    :pswitch_0
    check-cast v2, Lcom/google/android/gms/internal/ads/um;

    .line 110
    .line 111
    check-cast v1, Lorg/json/JSONObject;

    .line 112
    .line 113
    move-object v5, p1

    .line 114
    check-cast v5, Ljava/util/List;

    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    const/4 p1, 0x0

    .line 120
    if-eqz v5, :cond_3

    .line 121
    .line 122
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_1

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_1
    const-string v0, "text"

    .line 130
    .line 131
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    const-string v0, "bg_color"

    .line 136
    .line 137
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/um;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    const-string v0, "text_color"

    .line 142
    .line 143
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/um;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    const-string v0, "text_size"

    .line 148
    .line 149
    const/4 v3, -0x1

    .line 150
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    const-string v3, "allow_pub_rendering"

    .line 155
    .line 156
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    const-string v3, "animation_ms"

    .line 160
    .line 161
    const/16 v8, 0x3e8

    .line 162
    .line 163
    invoke-virtual {v1, v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    const-string v8, "presentation_ms"

    .line 168
    .line 169
    const/16 v9, 0xfa0

    .line 170
    .line 171
    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    new-instance v11, Lcom/google/android/gms/internal/ads/H8;

    .line 176
    .line 177
    if-lez v0, :cond_2

    .line 178
    .line 179
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    :cond_2
    move-object v8, p1

    .line 184
    add-int v9, v1, v3

    .line 185
    .line 186
    iget-object p1, v2, Lcom/google/android/gms/internal/ads/um;->h:Lcom/google/android/gms/internal/ads/M8;

    .line 187
    .line 188
    iget v10, p1, Lcom/google/android/gms/internal/ads/M8;->K:I

    .line 189
    .line 190
    move-object v3, v11

    .line 191
    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/H8;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;II)V

    .line 192
    .line 193
    .line 194
    move-object p1, v11

    .line 195
    :cond_3
    :goto_1
    return-object p1

    .line 196
    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/ads/La;

    .line 197
    .line 198
    check-cast v2, Ljava/lang/String;

    .line 199
    .line 200
    check-cast v1, Lcom/google/android/gms/internal/ads/N9;

    .line 201
    .line 202
    invoke-interface {p1, v2, v1}, Lcom/google/android/gms/internal/ads/La;->z(Ljava/lang/String;Lcom/google/android/gms/internal/ads/N9;)V

    .line 203
    .line 204
    .line 205
    return-object p1

    .line 206
    nop

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
