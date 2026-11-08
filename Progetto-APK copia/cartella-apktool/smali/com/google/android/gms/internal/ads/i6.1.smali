.class public final Lcom/google/android/gms/internal/ads/i6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;

.field public final i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILY/s;Lg7/c;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 16
    iput v0, p0, Lcom/google/android/gms/internal/ads/i6;->a:I

    .line 17
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/i6;->d:Ljava/lang/Object;

    .line 18
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/i6;->e:Ljava/lang/Object;

    .line 19
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/i6;->c:Ljava/lang/String;

    .line 20
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/i6;->f:Ljava/lang/Object;

    .line 21
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/i6;->g:Ljava/lang/Object;

    .line 22
    iput p1, p0, Lcom/google/android/gms/internal/ads/i6;->b:I

    .line 23
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/i6;->h:Ljava/lang/Object;

    .line 24
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/i6;->i:Ljava/lang/Object;

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/i6;->b()V

    return-void
.end method

.method public constructor <init>(ILandroid/app/Activity;Lg7/c;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/i6;->a:I

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/i6;->d:Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/i6;->e:Ljava/lang/Object;

    .line 8
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/i6;->c:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/i6;->f:Ljava/lang/Object;

    .line 10
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/i6;->g:Ljava/lang/Object;

    .line 11
    iput p1, p0, Lcom/google/android/gms/internal/ads/i6;->b:I

    .line 12
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/i6;->h:Ljava/lang/Object;

    .line 13
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/i6;->i:Ljava/lang/Object;

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/i6;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ll3/G0;ILcom/google/android/gms/internal/ads/to;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/i6;->a:I

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/ab;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ab;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/i6;->h:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/i6;->e:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/i6;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/i6;->f:Ljava/lang/Object;

    iput p4, p0, Lcom/google/android/gms/internal/ads/i6;->b:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/i6;->g:Ljava/lang/Object;

    sget-object p1, Ll3/c1;->a:Ll3/c1;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/i6;->i:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lr2/o;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/i6;->a:I

    .line 2
    .line 3
    const-string v1, "VolleyFastoGTGetRequest -- Error"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "VolleyFastoGTGetRequest -- success"

    .line 7
    .line 8
    const-string v4, "failed"

    .line 9
    .line 10
    const-string v5, "XCIPTV_TAG"

    .line 11
    .line 12
    const-string v6, "----------VolleyError------------"

    .line 13
    .line 14
    const-string v7, "VolleyFastoGTGetRequest -- errorMsg"

    .line 15
    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :try_start_0
    iget-object v0, p1, Lr2/o;->G:Lr2/i;

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget p1, v0, Lr2/i;->a:I

    .line 39
    .line 40
    new-instance v2, Ljava/lang/String;

    .line 41
    .line 42
    iget-object v0, v0, Lr2/i;->b:[B

    .line 43
    .line 44
    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i6;->e:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Lg7/c;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/i6;->c:Ljava/lang/String;

    .line 59
    .line 60
    invoke-interface {v0, p1, v4, v2}, Lg7/c;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i6;->e:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v0, Lg7/c;

    .line 74
    .line 75
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/i6;->c:Ljava/lang/String;

    .line 76
    .line 77
    invoke-interface {v0, v2, p1, v3}, Lg7/c;->e(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catch_0
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    :goto_0
    return-void

    .line 85
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    :try_start_1
    iget-object v0, p1, Lr2/o;->G:Lr2/i;

    .line 101
    .line 102
    if-eqz v0, :cond_1

    .line 103
    .line 104
    iget p1, v0, Lr2/i;->a:I

    .line 105
    .line 106
    new-instance v2, Ljava/lang/String;

    .line 107
    .line 108
    iget-object v0, v0, Lr2/i;->b:[B

    .line 109
    .line 110
    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i6;->e:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v0, Lg7/c;

    .line 123
    .line 124
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/i6;->c:Ljava/lang/String;

    .line 125
    .line 126
    invoke-interface {v0, p1, v4, v2}, Lg7/c;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_1
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i6;->e:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v0, Lg7/c;

    .line 140
    .line 141
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/i6;->c:Ljava/lang/String;

    .line 142
    .line 143
    invoke-interface {v0, v2, p1, v3}, Lg7/c;->e(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :catch_1
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    :goto_1
    return-void

    .line 151
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/i6;->a:I

    .line 2
    .line 3
    const v1, 0xc350

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance v0, Lg7/b;

    .line 11
    .line 12
    iget v5, p0, Lcom/google/android/gms/internal/ads/i6;->b:I

    .line 13
    .line 14
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/i6;->f:Ljava/lang/Object;

    .line 15
    .line 16
    move-object v6, v3

    .line 17
    check-cast v6, Ljava/lang/String;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/i6;->g:Ljava/lang/Object;

    .line 20
    .line 21
    move-object v7, v3

    .line 22
    check-cast v7, Lorg/json/JSONObject;

    .line 23
    .line 24
    new-instance v8, Lg7/a;

    .line 25
    .line 26
    invoke-direct {v8, p0}, Lg7/a;-><init>(Lcom/google/android/gms/internal/ads/i6;)V

    .line 27
    .line 28
    .line 29
    new-instance v9, Lg7/a;

    .line 30
    .line 31
    invoke-direct {v9, p0}, Lg7/a;-><init>(Lcom/google/android/gms/internal/ads/i6;)V

    .line 32
    .line 33
    .line 34
    const/4 v10, 0x1

    .line 35
    move-object v3, v0

    .line 36
    move-object v4, p0

    .line 37
    invoke-direct/range {v3 .. v10}, Lg7/b;-><init>(Ljava/lang/Object;ILjava/lang/String;Lorg/json/JSONObject;Lr2/n;Lr2/m;I)V

    .line 38
    .line 39
    .line 40
    new-instance v3, LA2/i;

    .line 41
    .line 42
    invoke-direct {v3, v1, v2}, LA2/i;-><init>(II)V

    .line 43
    .line 44
    .line 45
    iput-object v3, v0, Lr2/k;->Q:LA2/i;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/i6;->d:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, LY/s;

    .line 50
    .line 51
    invoke-virtual {v1}, LY/s;->l()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/Q1;->c(Landroid/content/Context;)Lr2/l;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1, v0}, Lr2/l;->a(Lr2/k;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_0
    new-instance v0, Lg7/b;

    .line 64
    .line 65
    iget v5, p0, Lcom/google/android/gms/internal/ads/i6;->b:I

    .line 66
    .line 67
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/i6;->f:Ljava/lang/Object;

    .line 68
    .line 69
    move-object v6, v3

    .line 70
    check-cast v6, Ljava/lang/String;

    .line 71
    .line 72
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/i6;->g:Ljava/lang/Object;

    .line 73
    .line 74
    move-object v7, v3

    .line 75
    check-cast v7, Lorg/json/JSONObject;

    .line 76
    .line 77
    new-instance v8, Lg7/a;

    .line 78
    .line 79
    invoke-direct {v8, p0}, Lg7/a;-><init>(Lcom/google/android/gms/internal/ads/i6;)V

    .line 80
    .line 81
    .line 82
    new-instance v9, Lg7/a;

    .line 83
    .line 84
    invoke-direct {v9, p0}, Lg7/a;-><init>(Lcom/google/android/gms/internal/ads/i6;)V

    .line 85
    .line 86
    .line 87
    const/4 v10, 0x0

    .line 88
    move-object v3, v0

    .line 89
    move-object v4, p0

    .line 90
    invoke-direct/range {v3 .. v10}, Lg7/b;-><init>(Ljava/lang/Object;ILjava/lang/String;Lorg/json/JSONObject;Lr2/n;Lr2/m;I)V

    .line 91
    .line 92
    .line 93
    new-instance v3, LA2/i;

    .line 94
    .line 95
    invoke-direct {v3, v1, v2}, LA2/i;-><init>(II)V

    .line 96
    .line 97
    .line 98
    iput-object v3, v0, Lr2/k;->Q:LA2/i;

    .line 99
    .line 100
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/i6;->d:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v1, Landroid/app/Activity;

    .line 103
    .line 104
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/Q1;->c(Landroid/content/Context;)Lr2/l;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1, v0}, Lr2/l;->a(Lr2/k;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 10

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {}, Ll3/d1;->i()Ll3/d1;

    .line 6
    .line 7
    .line 8
    move-result-object v5

    .line 9
    sget-object v2, Ll3/p;->f:Ll3/p;

    .line 10
    .line 11
    iget-object v3, v2, Ll3/p;->b:Ll3/n;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/i6;->e:Ljava/lang/Object;

    .line 14
    .line 15
    move-object v8, v2

    .line 16
    check-cast v8, Landroid/content/Context;

    .line 17
    .line 18
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/i6;->c:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/i6;->h:Ljava/lang/Object;

    .line 21
    .line 22
    move-object v7, v2

    .line 23
    check-cast v7, Lcom/google/android/gms/internal/ads/ab;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    new-instance v9, Ll3/h;

    .line 29
    .line 30
    move-object v2, v9

    .line 31
    move-object v4, v8

    .line 32
    invoke-direct/range {v2 .. v7}, Ll3/h;-><init>(Ll3/n;Landroid/content/Context;Ll3/d1;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ab;)V

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v9, v8, v2}, Ll3/o;->d(Landroid/content/Context;Z)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ll3/J;

    .line 41
    .line 42
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/i6;->d:Ljava/lang/Object;

    .line 43
    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    iget v3, p0, Lcom/google/android/gms/internal/ads/i6;->b:I

    .line 47
    .line 48
    const/4 v4, 0x3

    .line 49
    if-eq v3, v4, :cond_0

    .line 50
    .line 51
    new-instance v4, Ll3/h1;

    .line 52
    .line 53
    invoke-direct {v4, v3}, Ll3/h1;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v2, v4}, Ll3/J;->E0(Ll3/h1;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/i6;->f:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v2, Ll3/G0;

    .line 65
    .line 66
    iput-wide v0, v2, Ll3/G0;->k:J

    .line 67
    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i6;->d:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, Ll3/J;

    .line 71
    .line 72
    new-instance v1, Lcom/google/android/gms/internal/ads/Y5;

    .line 73
    .line 74
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/i6;->g:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v2, Lcom/google/android/gms/internal/ads/to;

    .line 77
    .line 78
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/i6;->c:Ljava/lang/String;

    .line 79
    .line 80
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/Y5;-><init>(Lcom/google/android/gms/internal/ads/to;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {v0, v1}, Ll3/J;->k2(Lcom/google/android/gms/internal/ads/f6;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i6;->d:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v0, Ll3/J;

    .line 89
    .line 90
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/i6;->i:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v1, Ll3/c1;

    .line 93
    .line 94
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/i6;->e:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v2, Landroid/content/Context;

    .line 97
    .line 98
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/i6;->f:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v3, Ll3/G0;

    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    invoke-static {v2, v3}, Ll3/c1;->a(Landroid/content/Context;Ll3/G0;)Ll3/b1;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-interface {v0, v1}, Ll3/J;->h3(Ll3/b1;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    :cond_1
    return-void

    .line 113
    :goto_1
    const-string v1, "#007 Could not call remote method."

    .line 114
    .line 115
    invoke-static {v1, v0}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/i6;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Cw;->n(Ljava/lang/Object;)Lo3/G;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v1, p0, Lcom/google/android/gms/internal/ads/i6;->b:I

    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "defaultPort"

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lo3/G;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/i6;->d:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, LY5/w;

    .line 29
    .line 30
    const-string v2, "proxyDetector"

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Lo3/G;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/i6;->e:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, LY5/E;

    .line 38
    .line 39
    const-string v2, "syncContext"

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Lo3/G;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/i6;->f:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, LZ5/u;

    .line 47
    .line 48
    const-string v2, "serviceConfigParser"

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Lo3/G;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/i6;->g:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    .line 56
    .line 57
    const-string v2, "scheduledExecutorService"

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Lo3/G;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/i6;->h:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v1, LY5/d;

    .line 65
    .line 66
    const-string v2, "channelLogger"

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Lo3/G;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/i6;->i:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v1, Ljava/util/concurrent/Executor;

    .line 74
    .line 75
    const-string v2, "executor"

    .line 76
    .line 77
    invoke-virtual {v0, v1, v2}, Lo3/G;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v1, "overrideAuthority"

    .line 81
    .line 82
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/i6;->c:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v0, v2, v1}, Lo3/G;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Lo3/G;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    return-object v0

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
