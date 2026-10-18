.class public final Lcom/google/android/gms/internal/ads/Vx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Lcom/google/android/gms/internal/ads/Vx;

.field public static final h:Landroid/os/Handler;

.field public static i:Landroid/os/Handler;

.field public static final j:Lcom/google/android/gms/internal/ads/w4;

.field public static final k:Lcom/google/android/gms/internal/ads/w4;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/ArrayList;

.field public final c:Lcom/google/android/gms/internal/ads/Om;

.field public final d:Lcom/google/android/gms/internal/ads/Ux;

.field public final e:Lcom/google/android/gms/internal/ads/Om;

.field public f:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/Vx;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Vx;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/Vx;->g:Lcom/google/android/gms/internal/ads/Vx;

    .line 7
    .line 8
    new-instance v0, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/google/android/gms/internal/ads/Vx;->h:Landroid/os/Handler;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    sput-object v0, Lcom/google/android/gms/internal/ads/Vx;->i:Landroid/os/Handler;

    .line 21
    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/w4;

    .line 23
    .line 24
    const/4 v1, 0x3

    .line 25
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/w4;-><init>(I)V

    .line 26
    .line 27
    .line 28
    sput-object v0, Lcom/google/android/gms/internal/ads/Vx;->j:Lcom/google/android/gms/internal/ads/w4;

    .line 29
    .line 30
    new-instance v0, Lcom/google/android/gms/internal/ads/w4;

    .line 31
    .line 32
    const/4 v1, 0x4

    .line 33
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/w4;-><init>(I)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lcom/google/android/gms/internal/ads/Vx;->k:Lcom/google/android/gms/internal/ads/w4;

    .line 37
    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Vx;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Vx;->b:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/Ux;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Ux;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Vx;->d:Lcom/google/android/gms/internal/ads/Ux;

    .line 25
    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/Om;

    .line 27
    .line 28
    const/16 v1, 0x13

    .line 29
    .line 30
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Om;-><init>(I)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Vx;->c:Lcom/google/android/gms/internal/ads/Om;

    .line 34
    .line 35
    new-instance v0, Lcom/google/android/gms/internal/ads/Om;

    .line 36
    .line 37
    new-instance v1, Lcom/google/android/gms/internal/ads/xc;

    .line 38
    .line 39
    const/16 v2, 0x15

    .line 40
    .line 41
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/xc;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Om;-><init>(Lcom/google/android/gms/internal/ads/xc;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Vx;->e:Lcom/google/android/gms/internal/ads/Om;

    .line 48
    .line 49
    return-void
.end method

.method public static b()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Vx;->i:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Handler;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/google/android/gms/internal/ads/Vx;->i:Landroid/os/Handler;

    .line 15
    .line 16
    sget-object v1, Lcom/google/android/gms/internal/ads/Vx;->j:Lcom/google/android/gms/internal/ads/w4;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    sget-object v0, Lcom/google/android/gms/internal/ads/Vx;->i:Landroid/os/Handler;

    .line 22
    .line 23
    sget-object v1, Lcom/google/android/gms/internal/ads/Vx;->k:Lcom/google/android/gms/internal/ads/w4;

    .line 24
    .line 25
    const-wide/16 v2, 0xc8

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/google/android/gms/internal/ads/Ox;Lorg/json/JSONObject;Z)V
    .locals 10

    .line 1
    invoke-static {p1}, LU4/a;->i(Landroid/view/View;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_c

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Vx;->d:Lcom/google/android/gms/internal/ads/Ux;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Ux;->f:Ljava/io/Serializable;

    .line 10
    .line 11
    check-cast v1, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    const/4 v3, 0x3

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const/4 v8, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/Ux;->e:Z

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const/4 v8, 0x2

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v8, 0x3

    .line 31
    :goto_0
    if-ne v8, v3, :cond_2

    .line 32
    .line 33
    goto/16 :goto_9

    .line 34
    .line 35
    :cond_2
    move-object v6, p2

    .line 36
    check-cast v6, Lcom/google/android/gms/internal/ads/Xu;

    .line 37
    .line 38
    invoke-virtual {v6, p1}, Lcom/google/android/gms/internal/ads/Xu;->g(Landroid/view/View;)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    invoke-static {p3, v7}, Lcom/google/android/gms/internal/ads/Sx;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 43
    .line 44
    .line 45
    iget-object p2, v0, Lcom/google/android/gms/internal/ads/Ux;->a:Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-nez p2, :cond_3

    .line 52
    .line 53
    const/4 p2, 0x0

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    iget-object p2, v0, Lcom/google/android/gms/internal/ads/Ux;->a:Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    check-cast p2, Ljava/lang/String;

    .line 62
    .line 63
    if-eqz p2, :cond_4

    .line 64
    .line 65
    iget-object p3, v0, Lcom/google/android/gms/internal/ads/Ux;->a:Ljava/util/HashMap;

    .line 66
    .line 67
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    :cond_4
    :goto_1
    const/4 p3, 0x0

    .line 71
    if-eqz p2, :cond_6

    .line 72
    .line 73
    :try_start_0
    const-string p4, "adSessionId"

    .line 74
    .line 75
    invoke-virtual {v7, p4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :catch_0
    move-exception p2

    .line 80
    const-string p4, "Error with setting ad session id"

    .line 81
    .line 82
    invoke-static {p4, p2}, Lo3/r;->s(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 83
    .line 84
    .line 85
    :goto_2
    iget-object p2, v0, Lcom/google/android/gms/internal/ads/Ux;->i:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p2, Ljava/util/Map;

    .line 88
    .line 89
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p4

    .line 93
    if-eqz p4, :cond_5

    .line 94
    .line 95
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 96
    .line 97
    invoke-interface {p2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_5
    const/4 p3, 0x1

    .line 102
    :goto_3
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    :try_start_1
    const-string p2, "hasWindowFocus"

    .line 107
    .line 108
    invoke-virtual {v7, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    .line 110
    .line 111
    goto :goto_4

    .line 112
    :catch_1
    move-exception p1

    .line 113
    const-string p2, "Error with setting has window focus"

    .line 114
    .line 115
    invoke-static {p2, p1}, Lo3/r;->s(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 116
    .line 117
    .line 118
    :goto_4
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/Ux;->e:Z

    .line 119
    .line 120
    goto :goto_9

    .line 121
    :cond_6
    iget-object p2, v0, Lcom/google/android/gms/internal/ads/Ux;->b:Ljava/util/HashMap;

    .line 122
    .line 123
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Lcom/google/android/gms/internal/ads/Tx;

    .line 128
    .line 129
    if-eqz v0, :cond_7

    .line 130
    .line 131
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    :cond_7
    if-eqz v0, :cond_9

    .line 135
    .line 136
    iget-object p2, v0, Lcom/google/android/gms/internal/ads/Tx;->a:Lcom/google/android/gms/internal/ads/Kx;

    .line 137
    .line 138
    new-instance v1, Lorg/json/JSONArray;

    .line 139
    .line 140
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 141
    .line 142
    .line 143
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Tx;->b:Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    const/4 v4, 0x0

    .line 150
    :goto_5
    if-ge v4, v3, :cond_8

    .line 151
    .line 152
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    check-cast v5, Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 159
    .line 160
    .line 161
    add-int/lit8 v4, v4, 0x1

    .line 162
    .line 163
    goto :goto_5

    .line 164
    :cond_8
    :try_start_2
    const-string v0, "isFriendlyObstructionFor"

    .line 165
    .line 166
    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    .line 168
    .line 169
    const-string v0, "friendlyObstructionClass"

    .line 170
    .line 171
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/Kx;->b:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    .line 175
    .line 176
    const-string v0, "friendlyObstructionPurpose"

    .line 177
    .line 178
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/Kx;->c:Lcom/google/android/gms/internal/ads/zx;

    .line 179
    .line 180
    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    .line 182
    .line 183
    const-string v0, "friendlyObstructionReason"

    .line 184
    .line 185
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/Kx;->d:Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {v7, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 188
    .line 189
    .line 190
    :goto_6
    const/4 p2, 0x1

    .line 191
    goto :goto_7

    .line 192
    :catch_2
    move-exception p2

    .line 193
    const-string v0, "Error with setting friendly obstruction"

    .line 194
    .line 195
    invoke-static {v0, p2}, Lo3/r;->s(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 196
    .line 197
    .line 198
    goto :goto_6

    .line 199
    :cond_9
    const/4 p2, 0x0

    .line 200
    :goto_7
    if-nez p4, :cond_a

    .line 201
    .line 202
    if-eqz p2, :cond_b

    .line 203
    .line 204
    :cond_a
    const/4 v9, 0x1

    .line 205
    goto :goto_8

    .line 206
    :cond_b
    const/4 v9, 0x0

    .line 207
    :goto_8
    move-object v4, p0

    .line 208
    move-object v5, p1

    .line 209
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/Vx;->c(Landroid/view/View;Lcom/google/android/gms/internal/ads/Ox;Lorg/json/JSONObject;IZ)V

    .line 210
    .line 211
    .line 212
    :cond_c
    :goto_9
    return-void
.end method

.method public final c(Landroid/view/View;Lcom/google/android/gms/internal/ads/Ox;Lorg/json/JSONObject;IZ)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p4, v1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    :goto_0
    check-cast p2, Lcom/google/android/gms/internal/ads/Xu;

    .line 8
    .line 9
    iget p4, p2, Lcom/google/android/gms/internal/ads/Xu;->G:I

    .line 10
    .line 11
    packed-switch p4, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    instance-of p4, p1, Landroid/view/ViewGroup;

    .line 15
    .line 16
    if-nez p4, :cond_1

    .line 17
    .line 18
    goto/16 :goto_9

    .line 19
    .line 20
    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    .line 21
    .line 22
    if-eqz v1, :cond_5

    .line 23
    .line 24
    new-instance p4, Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-ge v1, v2, :cond_3

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Landroid/view/View;->getZ()F

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {p4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Ljava/util/ArrayList;

    .line 53
    .line 54
    if-nez v3, :cond_2

    .line 55
    .line 56
    new-instance v3, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Landroid/view/View;->getZ()F

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {p4, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    :cond_2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    add-int/lit8 v1, v1, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 85
    .line 86
    .line 87
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    const/4 v2, 0x0

    .line 95
    :goto_2
    if-ge v2, v1, :cond_b

    .line 96
    .line 97
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    check-cast v3, Ljava/lang/Float;

    .line 102
    .line 103
    invoke-virtual {p4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    check-cast v3, Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    const/4 v5, 0x0

    .line 114
    :goto_3
    add-int/lit8 v6, v2, 0x1

    .line 115
    .line 116
    if-ge v5, v4, :cond_4

    .line 117
    .line 118
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    check-cast v6, Landroid/view/View;

    .line 123
    .line 124
    invoke-virtual {p0, v6, p2, p3, p5}, Lcom/google/android/gms/internal/ads/Vx;->a(Landroid/view/View;Lcom/google/android/gms/internal/ads/Ox;Lorg/json/JSONObject;Z)V

    .line 125
    .line 126
    .line 127
    add-int/lit8 v5, v5, 0x1

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_4
    move v2, v6

    .line 131
    goto :goto_2

    .line 132
    :cond_5
    :goto_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 133
    .line 134
    .line 135
    move-result p4

    .line 136
    if-ge v0, p4, :cond_b

    .line 137
    .line 138
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object p4

    .line 142
    invoke-virtual {p0, p4, p2, p3, p5}, Lcom/google/android/gms/internal/ads/Vx;->a(Landroid/view/View;Lcom/google/android/gms/internal/ads/Ox;Lorg/json/JSONObject;Z)V

    .line 143
    .line 144
    .line 145
    add-int/lit8 v0, v0, 0x1

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :pswitch_0
    new-instance p1, Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .line 152
    .line 153
    sget-object p4, Lcom/google/android/gms/internal/ads/Hx;->c:Lcom/google/android/gms/internal/ads/Hx;

    .line 154
    .line 155
    if-eqz p4, :cond_a

    .line 156
    .line 157
    iget-object p4, p4, Lcom/google/android/gms/internal/ads/Hx;->b:Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 160
    .line 161
    .line 162
    move-result-object p4

    .line 163
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    add-int/2addr v1, v1

    .line 168
    new-instance v2, Ljava/util/IdentityHashMap;

    .line 169
    .line 170
    add-int/lit8 v1, v1, 0x3

    .line 171
    .line 172
    invoke-direct {v2, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 173
    .line 174
    .line 175
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 176
    .line 177
    .line 178
    move-result-object p4

    .line 179
    :cond_6
    :goto_5
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_a

    .line 184
    .line 185
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    check-cast v1, Lcom/google/android/gms/internal/ads/xx;

    .line 190
    .line 191
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/xx;->c:Lcom/google/android/gms/internal/ads/ay;

    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    check-cast v1, Landroid/view/View;

    .line 198
    .line 199
    if-eqz v1, :cond_6

    .line 200
    .line 201
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    if-eqz v3, :cond_6

    .line 206
    .line 207
    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    if-eqz v3, :cond_6

    .line 212
    .line 213
    move-object v3, v1

    .line 214
    :goto_6
    if-eqz v3, :cond_8

    .line 215
    .line 216
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    const/4 v5, 0x0

    .line 221
    cmpl-float v4, v4, v5

    .line 222
    .line 223
    if-eqz v4, :cond_6

    .line 224
    .line 225
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    instance-of v4, v3, Landroid/view/View;

    .line 230
    .line 231
    if-eqz v4, :cond_7

    .line 232
    .line 233
    check-cast v3, Landroid/view/View;

    .line 234
    .line 235
    goto :goto_6

    .line 236
    :cond_7
    const/4 v3, 0x0

    .line 237
    goto :goto_6

    .line 238
    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    if-eqz v1, :cond_6

    .line 243
    .line 244
    invoke-virtual {v2, v1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    if-nez v3, :cond_6

    .line 249
    .line 250
    invoke-virtual {v2, v1, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1}, Landroid/view/View;->getZ()F

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 258
    .line 259
    .line 260
    move-result v4

    .line 261
    :goto_7
    if-lez v4, :cond_9

    .line 262
    .line 263
    add-int/lit8 v5, v4, -0x1

    .line 264
    .line 265
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v6

    .line 269
    check-cast v6, Landroid/view/View;

    .line 270
    .line 271
    invoke-virtual {v6}, Landroid/view/View;->getZ()F

    .line 272
    .line 273
    .line 274
    move-result v6

    .line 275
    cmpl-float v6, v6, v3

    .line 276
    .line 277
    if-lez v6, :cond_9

    .line 278
    .line 279
    move v4, v5

    .line 280
    goto :goto_7

    .line 281
    :cond_9
    invoke-virtual {p1, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    goto :goto_5

    .line 285
    :cond_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 286
    .line 287
    .line 288
    move-result p4

    .line 289
    :goto_8
    if-ge v0, p4, :cond_b

    .line 290
    .line 291
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    check-cast v1, Landroid/view/View;

    .line 296
    .line 297
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast v2, Lcom/google/android/gms/internal/ads/Ox;

    .line 300
    .line 301
    invoke-virtual {p0, v1, v2, p3, p5}, Lcom/google/android/gms/internal/ads/Vx;->a(Landroid/view/View;Lcom/google/android/gms/internal/ads/Ox;Lorg/json/JSONObject;Z)V

    .line 302
    .line 303
    .line 304
    add-int/lit8 v0, v0, 0x1

    .line 305
    .line 306
    goto :goto_8

    .line 307
    :cond_b
    :goto_9
    return-void

    .line 308
    nop

    .line 309
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method
