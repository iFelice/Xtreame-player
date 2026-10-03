.class public final synthetic Lcom/google/android/gms/internal/ads/tf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/VB;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/vf;

.field public final synthetic I:Ljava/lang/String;

.field public final synthetic J:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/vf;Ljava/lang/String;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/google/android/gms/internal/ads/tf;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tf;->H:Lcom/google/android/gms/internal/ads/vf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/tf;->I:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/tf;->J:Z

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/kC;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/ads/tf;->G:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/tf;->J:Z

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/tf;->H:Lcom/google/android/gms/internal/ads/vf;

    .line 10
    .line 11
    packed-switch v1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v11, Lcom/google/android/gms/internal/ads/WD;

    .line 18
    .line 19
    invoke-direct {v11}, Lcom/google/android/gms/internal/ads/WD;-><init>()V

    .line 20
    .line 21
    .line 22
    if-eq v4, v3, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v2, v5

    .line 26
    :goto_0
    iget-object v1, v5, Lcom/google/android/gms/internal/ads/vf;->J:Lcom/google/android/gms/internal/ads/Ne;

    .line 27
    .line 28
    iget v8, v1, Lcom/google/android/gms/internal/ads/Ne;->d:I

    .line 29
    .line 30
    new-instance v3, Lcom/google/android/gms/internal/ads/rF;

    .line 31
    .line 32
    iget v9, v1, Lcom/google/android/gms/internal/ads/Ne;->e:I

    .line 33
    .line 34
    const/4 v10, 0x1

    .line 35
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/tf;->I:Ljava/lang/String;

    .line 36
    .line 37
    move-object v6, v3

    .line 38
    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/rF;-><init>(Ljava/lang/String;IIZLcom/google/android/gms/internal/ads/WD;)V

    .line 39
    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/Nz;->f(Lcom/google/android/gms/internal/ads/lJ;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-object v3

    .line 47
    :pswitch_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    if-eq v4, v3, :cond_2

    .line 51
    .line 52
    move-object v14, v2

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    move-object v14, v5

    .line 55
    :goto_1
    new-instance v1, Lcom/google/android/gms/internal/ads/pf;

    .line 56
    .line 57
    iget-object v2, v5, Lcom/google/android/gms/internal/ads/vf;->J:Lcom/google/android/gms/internal/ads/Ne;

    .line 58
    .line 59
    iget v15, v2, Lcom/google/android/gms/internal/ads/Ne;->d:I

    .line 60
    .line 61
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/tf;->I:Ljava/lang/String;

    .line 62
    .line 63
    iget v3, v2, Lcom/google/android/gms/internal/ads/Ne;->e:I

    .line 64
    .line 65
    iget v2, v2, Lcom/google/android/gms/internal/ads/Ne;->h:I

    .line 66
    .line 67
    move-object v12, v1

    .line 68
    move/from16 v16, v3

    .line 69
    .line 70
    move/from16 v17, v2

    .line 71
    .line 72
    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/pf;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/vf;III)V

    .line 73
    .line 74
    .line 75
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 76
    .line 77
    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iget-object v3, v5, Lcom/google/android/gms/internal/ads/vf;->Z:Ljava/util/HashSet;

    .line 81
    .line 82
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    return-object v1

    .line 86
    :pswitch_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    if-eq v4, v3, :cond_3

    .line 90
    .line 91
    move-object v6, v2

    .line 92
    goto :goto_2

    .line 93
    :cond_3
    move-object v6, v5

    .line 94
    :goto_2
    new-instance v1, Lcom/google/android/gms/internal/ads/xf;

    .line 95
    .line 96
    iget-object v2, v5, Lcom/google/android/gms/internal/ads/vf;->J:Lcom/google/android/gms/internal/ads/Ne;

    .line 97
    .line 98
    iget v7, v2, Lcom/google/android/gms/internal/ads/Ne;->d:I

    .line 99
    .line 100
    iget v8, v2, Lcom/google/android/gms/internal/ads/Ne;->e:I

    .line 101
    .line 102
    iget-wide v11, v2, Lcom/google/android/gms/internal/ads/Ne;->n:J

    .line 103
    .line 104
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/tf;->I:Ljava/lang/String;

    .line 105
    .line 106
    iget-wide v9, v2, Lcom/google/android/gms/internal/ads/Ne;->m:J

    .line 107
    .line 108
    move-object v4, v1

    .line 109
    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/internal/ads/xf;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/vf;IIJJ)V

    .line 110
    .line 111
    .line 112
    return-object v1

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
