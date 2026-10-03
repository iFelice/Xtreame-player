.class public final Lcom/google/android/gms/internal/ads/Fg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/Bg;

.field public b:Landroid/content/Context;

.field public c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Bg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Fg;->a:Lcom/google/android/gms/internal/ads/Bg;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/Nd;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Fg;->b:Landroid/content/Context;

    .line 4
    .line 5
    const-class v2, Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Cw;->f1(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/google/android/gms/internal/ads/Nd;

    .line 11
    .line 12
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Fg;->b:Landroid/content/Context;

    .line 13
    .line 14
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/Fg;->c:Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Fg;->a:Lcom/google/android/gms/internal/ads/Bg;

    .line 20
    .line 21
    iput-object v4, v1, Lcom/google/android/gms/internal/ads/Nd;->a:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/JJ;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/JJ;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/Nd;->b:Ljava/lang/Object;

    .line 28
    .line 29
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/Nd;->a:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v4, Lcom/google/android/gms/internal/ads/Bg;

    .line 32
    .line 33
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/Bg;->m0:Lcom/google/android/gms/internal/ads/MJ;

    .line 34
    .line 35
    new-instance v6, Lcom/google/android/gms/internal/ads/yv;

    .line 36
    .line 37
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/Bg;->n0:Lcom/google/android/gms/internal/ads/MJ;

    .line 38
    .line 39
    invoke-direct {v6, v2, v5, v7}, Lcom/google/android/gms/internal/ads/yv;-><init>(Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;)V

    .line 40
    .line 41
    .line 42
    iput-object v6, v1, Lcom/google/android/gms/internal/ads/Nd;->c:Ljava/lang/Object;

    .line 43
    .line 44
    new-instance v6, Lcom/google/android/gms/internal/ads/Ou;

    .line 45
    .line 46
    const/4 v7, 0x3

    .line 47
    invoke-direct {v6, v5, v7}, Lcom/google/android/gms/internal/ads/Ou;-><init>(Lcom/google/android/gms/internal/ads/MJ;I)V

    .line 48
    .line 49
    .line 50
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/HJ;->b(Lcom/google/android/gms/internal/ads/IJ;)Lcom/google/android/gms/internal/ads/MJ;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    iput-object v5, v1, Lcom/google/android/gms/internal/ads/Nd;->d:Ljava/lang/Object;

    .line 55
    .line 56
    sget-object v5, Lcom/google/android/gms/internal/ads/el;->x:Lcom/google/android/gms/internal/ads/Jo;

    .line 57
    .line 58
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/HJ;->b(Lcom/google/android/gms/internal/ads/IJ;)Lcom/google/android/gms/internal/ads/MJ;

    .line 59
    .line 60
    .line 61
    move-result-object v13

    .line 62
    iput-object v13, v1, Lcom/google/android/gms/internal/ads/Nd;->e:Ljava/lang/Object;

    .line 63
    .line 64
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/Nd;->c:Ljava/lang/Object;

    .line 65
    .line 66
    move-object v9, v5

    .line 67
    check-cast v9, Lcom/google/android/gms/internal/ads/MJ;

    .line 68
    .line 69
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/Nd;->d:Ljava/lang/Object;

    .line 70
    .line 71
    move-object v14, v5

    .line 72
    check-cast v14, Lcom/google/android/gms/internal/ads/MJ;

    .line 73
    .line 74
    new-instance v15, Lcom/google/android/gms/internal/ads/ql;

    .line 75
    .line 76
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/Bg;->d:Lcom/google/android/gms/internal/ads/MJ;

    .line 77
    .line 78
    const/16 v12, 0xa

    .line 79
    .line 80
    iget-object v8, v4, Lcom/google/android/gms/internal/ads/Bg;->B:Lcom/google/android/gms/internal/ads/JJ;

    .line 81
    .line 82
    move-object v5, v15

    .line 83
    move-object v6, v2

    .line 84
    move-object v10, v14

    .line 85
    move-object v11, v13

    .line 86
    invoke-direct/range {v5 .. v12}, Lcom/google/android/gms/internal/ads/ql;-><init>(Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/JJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;I)V

    .line 87
    .line 88
    .line 89
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/HJ;->b(Lcom/google/android/gms/internal/ads/IJ;)Lcom/google/android/gms/internal/ads/MJ;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    iput-object v7, v1, Lcom/google/android/gms/internal/ads/Nd;->f:Ljava/lang/Object;

    .line 94
    .line 95
    new-instance v5, Lcom/google/android/gms/internal/ads/Lu;

    .line 96
    .line 97
    invoke-direct {v5, v7, v14, v13}, Lcom/google/android/gms/internal/ads/Lu;-><init>(Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/HJ;->b(Lcom/google/android/gms/internal/ads/IJ;)Lcom/google/android/gms/internal/ads/MJ;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    iput-object v5, v1, Lcom/google/android/gms/internal/ads/Nd;->g:Ljava/lang/Object;

    .line 105
    .line 106
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/JJ;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/JJ;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    iput-object v6, v1, Lcom/google/android/gms/internal/ads/Nd;->h:Ljava/lang/Object;

    .line 111
    .line 112
    new-instance v3, Lcom/google/android/gms/internal/ads/Em;

    .line 113
    .line 114
    iget-object v15, v4, Lcom/google/android/gms/internal/ads/Bg;->y:Lcom/google/android/gms/internal/ads/MJ;

    .line 115
    .line 116
    const/16 v16, 0x7

    .line 117
    .line 118
    iget-object v11, v4, Lcom/google/android/gms/internal/ads/Bg;->k:Lcom/google/android/gms/internal/ads/rg;

    .line 119
    .line 120
    iget-object v12, v4, Lcom/google/android/gms/internal/ads/Bg;->D:Lcom/google/android/gms/internal/ads/MJ;

    .line 121
    .line 122
    move-object v5, v3

    .line 123
    move-object v8, v2

    .line 124
    move-object v9, v14

    .line 125
    move-object v10, v13

    .line 126
    move-object v13, v15

    .line 127
    move/from16 v14, v16

    .line 128
    .line 129
    invoke-direct/range {v5 .. v14}, Lcom/google/android/gms/internal/ads/Em;-><init>(Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;I)V

    .line 130
    .line 131
    .line 132
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/HJ;->b(Lcom/google/android/gms/internal/ads/IJ;)Lcom/google/android/gms/internal/ads/MJ;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/Nd;->i:Ljava/lang/Object;

    .line 137
    .line 138
    return-object v1
.end method
