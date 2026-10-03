.class public final Lcom/google/android/gms/internal/ads/Jg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/Bg;

.field public b:Landroid/content/Context;

.field public c:Ljava/lang/String;

.field public d:Ll3/d1;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Bg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Jg;->a:Lcom/google/android/gms/internal/ads/Bg;

    return-void
.end method


# virtual methods
.method public final a()Ll3/n;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Jg;->b:Landroid/content/Context;

    .line 4
    .line 5
    const-class v2, Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Cw;->f1(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Jg;->c:Ljava/lang/String;

    .line 11
    .line 12
    const-class v2, Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Cw;->f1(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Jg;->d:Ll3/d1;

    .line 18
    .line 19
    const-class v2, Ll3/d1;

    .line 20
    .line 21
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Cw;->f1(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Ll3/n;

    .line 25
    .line 26
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Jg;->b:Landroid/content/Context;

    .line 27
    .line 28
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Jg;->c:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Jg;->d:Ll3/d1;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Jg;->a:Lcom/google/android/gms/internal/ads/Bg;

    .line 36
    .line 37
    iput-object v5, v1, Ll3/n;->a:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/JJ;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/JJ;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iput-object v2, v1, Ll3/n;->b:Ljava/lang/Object;

    .line 44
    .line 45
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/JJ;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/JJ;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iput-object v2, v1, Ll3/n;->c:Ljava/lang/Object;

    .line 50
    .line 51
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/JJ;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/JJ;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    iput-object v2, v1, Ll3/n;->d:Ljava/lang/Object;

    .line 56
    .line 57
    iget-object v2, v1, Ll3/n;->a:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v2, Lcom/google/android/gms/internal/ads/Bg;

    .line 60
    .line 61
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/Bg;->y:Lcom/google/android/gms/internal/ads/MJ;

    .line 62
    .line 63
    new-instance v4, Lcom/google/android/gms/internal/ads/Mn;

    .line 64
    .line 65
    const/16 v5, 0x14

    .line 66
    .line 67
    const/4 v6, 0x0

    .line 68
    invoke-direct {v4, v3, v5, v6}, Lcom/google/android/gms/internal/ads/Mn;-><init>(Lcom/google/android/gms/internal/ads/MJ;ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/HJ;->b(Lcom/google/android/gms/internal/ads/IJ;)Lcom/google/android/gms/internal/ads/MJ;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    iput-object v3, v1, Ll3/n;->e:Ljava/lang/Object;

    .line 76
    .line 77
    new-instance v3, Lcom/google/android/gms/internal/ads/Ou;

    .line 78
    .line 79
    const/4 v4, 0x3

    .line 80
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/Bg;->m0:Lcom/google/android/gms/internal/ads/MJ;

    .line 81
    .line 82
    invoke-direct {v3, v5, v4}, Lcom/google/android/gms/internal/ads/Ou;-><init>(Lcom/google/android/gms/internal/ads/MJ;I)V

    .line 83
    .line 84
    .line 85
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/HJ;->b(Lcom/google/android/gms/internal/ads/IJ;)Lcom/google/android/gms/internal/ads/MJ;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    iput-object v3, v1, Ll3/n;->f:Ljava/lang/Object;

    .line 90
    .line 91
    iget-object v4, v1, Ll3/n;->b:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v4, Lcom/google/android/gms/internal/ads/MJ;

    .line 94
    .line 95
    iget-object v5, v1, Ll3/n;->e:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v5, Lcom/google/android/gms/internal/ads/MJ;

    .line 98
    .line 99
    sget-object v12, Lcom/google/android/gms/internal/ads/el;->y:Lcom/google/android/gms/internal/ads/Jo;

    .line 100
    .line 101
    new-instance v14, Lcom/google/android/gms/internal/ads/Ch;

    .line 102
    .line 103
    const/16 v13, 0xf

    .line 104
    .line 105
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/Bg;->d:Lcom/google/android/gms/internal/ads/MJ;

    .line 106
    .line 107
    iget-object v9, v2, Lcom/google/android/gms/internal/ads/Bg;->B:Lcom/google/android/gms/internal/ads/JJ;

    .line 108
    .line 109
    move-object v6, v14

    .line 110
    move-object v7, v4

    .line 111
    move-object v10, v5

    .line 112
    move-object v11, v3

    .line 113
    invoke-direct/range {v6 .. v13}, Lcom/google/android/gms/internal/ads/Ch;-><init>(Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;I)V

    .line 114
    .line 115
    .line 116
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/HJ;->b(Lcom/google/android/gms/internal/ads/IJ;)Lcom/google/android/gms/internal/ads/MJ;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    iput-object v10, v1, Ll3/n;->g:Ljava/lang/Object;

    .line 121
    .line 122
    iget-object v6, v1, Ll3/n;->c:Ljava/lang/Object;

    .line 123
    .line 124
    move-object v8, v6

    .line 125
    check-cast v8, Lcom/google/android/gms/internal/ads/MJ;

    .line 126
    .line 127
    iget-object v6, v1, Ll3/n;->d:Ljava/lang/Object;

    .line 128
    .line 129
    move-object v9, v6

    .line 130
    check-cast v9, Lcom/google/android/gms/internal/ads/MJ;

    .line 131
    .line 132
    new-instance v17, Lcom/google/android/gms/internal/ads/jn;

    .line 133
    .line 134
    iget-object v15, v2, Lcom/google/android/gms/internal/ads/Bg;->y:Lcom/google/android/gms/internal/ads/MJ;

    .line 135
    .line 136
    const/16 v16, 0x2

    .line 137
    .line 138
    iget-object v13, v2, Lcom/google/android/gms/internal/ads/Bg;->k:Lcom/google/android/gms/internal/ads/rg;

    .line 139
    .line 140
    iget-object v14, v2, Lcom/google/android/gms/internal/ads/Bg;->D:Lcom/google/android/gms/internal/ads/MJ;

    .line 141
    .line 142
    move-object/from16 v6, v17

    .line 143
    .line 144
    move-object v7, v4

    .line 145
    move-object v11, v5

    .line 146
    move-object v12, v3

    .line 147
    invoke-direct/range {v6 .. v16}, Lcom/google/android/gms/internal/ads/jn;-><init>(Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;I)V

    .line 148
    .line 149
    .line 150
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/HJ;->b(Lcom/google/android/gms/internal/ads/IJ;)Lcom/google/android/gms/internal/ads/MJ;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    iput-object v2, v1, Ll3/n;->h:Ljava/lang/Object;

    .line 155
    .line 156
    return-object v1
.end method
