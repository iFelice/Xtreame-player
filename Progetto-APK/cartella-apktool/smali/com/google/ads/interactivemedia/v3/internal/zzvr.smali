.class public final Lcom/google/ads/interactivemedia/v3/internal/zzvr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final zza:Lcom/google/ads/interactivemedia/v3/internal/zzvl;

.field static final zzd:I = 0x1

.field static final zze:I = 0x1

.field static final zzf:I = 0x2

.field public static final synthetic zzg:I


# instance fields
.field final zzb:Ljava/util/List;

.field final zzc:Lcom/google/ads/interactivemedia/v3/internal/zzvl;

.field private final zzh:Ljava/lang/ThreadLocal;

.field private final zzi:Ljava/util/concurrent/ConcurrentMap;

.field private final zzj:Lcom/google/ads/interactivemedia/v3/internal/zzxl;

.field private final zzk:Lcom/google/ads/interactivemedia/v3/internal/zzyx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzvl;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzvl;

    .line 2
    .line 3
    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzvl;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 22

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzxn;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzxn;

    sget v2, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zzd:I

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v8, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzvl;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v18

    sget v19, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zze:I

    sget v20, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zzf:I

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v21

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x2

    .line 7
    invoke-direct/range {v0 .. v21}, Lcom/google/ads/interactivemedia/v3/internal/zzvr;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzxn;ILjava/util/Map;ZZZZLcom/google/ads/interactivemedia/v3/internal/zzvl;Lcom/google/ads/interactivemedia/v3/internal/zzwg;ZZILjava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;IILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzxn;ILjava/util/Map;ZZZZLcom/google/ads/interactivemedia/v3/internal/zzvl;Lcom/google/ads/interactivemedia/v3/internal/zzwg;ZZILjava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;IILjava/util/List;)V
    .locals 9

    move-object v0, p0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zzh:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zzi:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzxl;

    const/4 v2, 0x1

    move-object v3, p3

    move-object/from16 v4, p21

    invoke-direct {v1, p3, v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzxl;-><init>(Ljava/util/Map;ZLjava/util/List;)V

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zzj:Lcom/google/ads/interactivemedia/v3/internal/zzxl;

    move-object/from16 v2, p8

    iput-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzvl;

    new-instance v2, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzW:Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 11
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {p19 .. p19}, Lcom/google/ads/interactivemedia/v3/internal/zzzi;->zza(I)Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    move-result-object v3

    .line 12
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, p1

    .line 13
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, p18

    .line 14
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzC:Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 15
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzm:Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 16
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 17
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzi:Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 18
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzk:Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 19
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzt:Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v7, Ljava/lang/Long;

    invoke-static {v6, v7, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzc(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzwj;)Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    move-result-object v6

    .line 20
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eqz p10, :cond_0

    sget-object v7, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzv:Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    goto :goto_0

    .line 21
    :cond_0
    new-instance v7, Lcom/google/ads/interactivemedia/v3/internal/zzvm;

    invoke-direct {v7, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzvm;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzvr;)V

    .line 22
    :goto_0
    const-class v8, Ljava/lang/Double;

    invoke-static {v6, v8, v7}, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzc(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzwj;)Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    move-result-object v6

    .line 23
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eqz p10, :cond_1

    sget-object v7, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzu:Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    goto :goto_1

    .line 24
    :cond_1
    new-instance v7, Lcom/google/ads/interactivemedia/v3/internal/zzvn;

    invoke-direct {v7, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzvn;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzvr;)V

    .line 25
    :goto_1
    const-class v8, Ljava/lang/Float;

    invoke-static {v6, v8, v7}, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzc(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzwj;)Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    move-result-object v6

    .line 26
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {p20 .. p20}, Lcom/google/ads/interactivemedia/v3/internal/zzzf;->zza(I)Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    move-result-object v6

    .line 27
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzo:Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 28
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzq:Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 29
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/zzvo;

    invoke-direct {v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzvo;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzwj;)V

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/zzwj;->nullSafe()Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    move-result-object v6

    const-class v7, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v7, v6}, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzb(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzwj;)Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    move-result-object v6

    .line 30
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/zzvp;

    invoke-direct {v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzvp;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzwj;)V

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/zzwj;->nullSafe()Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    move-result-object v5

    const-class v6, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzb(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzwj;)Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    move-result-object v5

    .line 31
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzs:Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 32
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzx:Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 33
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzE:Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 34
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzG:Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 35
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v5, Ljava/math/BigDecimal;

    sget-object v6, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzz:Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    invoke-static {v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzb(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzwj;)Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    move-result-object v5

    .line 36
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v5, Ljava/math/BigInteger;

    sget-object v6, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzA:Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    invoke-static {v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzb(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzwj;)Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    move-result-object v5

    .line 37
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v5, Lcom/google/ads/interactivemedia/v3/internal/zzxq;

    sget-object v6, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzB:Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    invoke-static {v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzb(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzwj;)Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    move-result-object v5

    .line 38
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzI:Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 39
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzK:Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 40
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzO:Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 41
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzQ:Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 42
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzU:Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 43
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzM:Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 44
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 45
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/zzyu;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 46
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzS:Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 47
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-boolean v5, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zza:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 49
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 50
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/zzabz;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 51
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/zzyn;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 52
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 53
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/zzyp;

    invoke-direct {v5, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzyp;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzxl;)V

    .line 54
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/zzzd;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6}, Lcom/google/ads/interactivemedia/v3/internal/zzzd;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzxl;Z)V

    .line 55
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/zzyx;

    .line 56
    invoke-direct {v5, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzyx;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzxl;)V

    iput-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zzk:Lcom/google/ads/interactivemedia/v3/internal/zzyx;

    .line 57
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzX:Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 58
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/zzzq;

    move-object p3, v6

    move-object p4, v1

    move p5, p2

    move-object p6, p1

    move-object/from16 p7, v5

    move-object/from16 p8, p21

    invoke-direct/range {p3 .. p8}, Lcom/google/ads/interactivemedia/v3/internal/zzzq;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzxl;ILcom/google/ads/interactivemedia/v3/internal/zzxn;Lcom/google/ads/interactivemedia/v3/internal/zzyx;Ljava/util/List;)V

    .line 59
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zzb:Ljava/util/List;

    return-void
.end method

.method public static zzg(D)V
    .locals 2

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p0, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    .line 25
    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method

.method public static final zzi(Lcom/google/ads/interactivemedia/v3/internal/zzvw;Lcom/google/ads/interactivemedia/v3/internal/zzace;)V
    .locals 7

    .line 1
    const-string v0, "AssertionError (GSON 2.10.1): "

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzn()Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzt()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzs()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-virtual {p1, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzp(Z)V

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-virtual {p1, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzq(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzn()Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/zzwg;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 28
    .line 29
    if-ne v4, v5, :cond_0

    .line 30
    .line 31
    sget-object v4, Lcom/google/ads/interactivemedia/v3/internal/zzwg;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 32
    .line 33
    invoke-virtual {p1, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzr(Lcom/google/ads/interactivemedia/v3/internal/zzwg;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    :try_start_0
    sget-object v4, Lcom/google/ads/interactivemedia/v3/internal/zzabh;->zzV:Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    .line 37
    .line 38
    invoke-virtual {v4, p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzwj;->write(Lcom/google/ads/interactivemedia/v3/internal/zzace;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzr(Lcom/google/ads/interactivemedia/v3/internal/zzwg;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzp(Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzq(Z)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_2

    .line 53
    :catch_0
    move-exception p0

    .line 54
    goto :goto_0

    .line 55
    :catch_1
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :goto_0
    :try_start_1
    new-instance v4, Ljava/lang/AssertionError;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    new-instance v6, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {v4, v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    throw v4

    .line 79
    :goto_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzvx;

    .line 80
    .line 81
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzvx;-><init>(Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :goto_2
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzr(Lcom/google/ads/interactivemedia/v3/internal/zzwg;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzp(Z)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzq(Z)V

    .line 92
    .line 93
    .line 94
    throw p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zzj:Lcom/google/ads/interactivemedia/v3/internal/zzxl;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zzb:Ljava/util/List;

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzxl;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v2, "{serializeNulls:false,factories:"

    .line 14
    .line 15
    const-string v3, ",instanceCreators:"

    .line 16
    .line 17
    const-string v4, "}"

    .line 18
    .line 19
    invoke-static {v2, v1, v3, v0, v4}, LA0/O;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public final zza(Lcom/google/ads/interactivemedia/v3/internal/zzaca;)Lcom/google/ads/interactivemedia/v3/internal/zzwj;
    .locals 8

    .line 1
    const-string v0, "type must not be null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zzi:Ljava/util/concurrent/ConcurrentMap;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zzh:Ljava/lang/ThreadLocal;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/Map;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    const/4 v2, 0x1

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    new-instance v0, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zzh:Ljava/lang/ThreadLocal;

    .line 35
    .line 36
    invoke-virtual {v3, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    .line 46
    .line 47
    if-nez v3, :cond_8

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    :goto_0
    :try_start_0
    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    .line 51
    .line 52
    invoke-direct {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzvq;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zzb:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    const/4 v6, 0x0

    .line 65
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    if-eqz v7, :cond_3

    .line 70
    .line 71
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    check-cast v6, Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 76
    .line 77
    invoke-interface {v6, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzwk;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzvr;Lcom/google/ads/interactivemedia/v3/internal/zzaca;)Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    if-eqz v6, :cond_2

    .line 82
    .line 83
    invoke-virtual {v4, v6}, Lcom/google/ads/interactivemedia/v3/internal/zzvq;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzwj;)V

    .line 84
    .line 85
    .line 86
    invoke-interface {v0, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catchall_0
    move-exception p1

    .line 91
    goto :goto_2

    .line 92
    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 93
    .line 94
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zzh:Ljava/lang/ThreadLocal;

    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 97
    .line 98
    .line 99
    const/4 v1, 0x1

    .line 100
    :cond_4
    if-eqz v6, :cond_6

    .line 101
    .line 102
    if-eqz v1, :cond_5

    .line 103
    .line 104
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zzi:Ljava/util/concurrent/ConcurrentMap;

    .line 105
    .line 106
    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 107
    .line 108
    .line 109
    :cond_5
    return-object v6

    .line 110
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 111
    .line 112
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    const-string v1, "GSON (2.10.1) cannot handle "

    .line 117
    .line 118
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw v0

    .line 126
    :goto_2
    if-nez v3, :cond_7

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_7
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zzh:Ljava/lang/ThreadLocal;

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 132
    .line 133
    .line 134
    :goto_3
    throw p1

    .line 135
    :cond_8
    return-object v3
.end method

.method public final zzb(Lcom/google/ads/interactivemedia/v3/internal/zzwk;Lcom/google/ads/interactivemedia/v3/internal/zzaca;)Lcom/google/ads/interactivemedia/v3/internal/zzwj;
    .locals 3

    .line 1
    const-string v0, "skipPast must not be null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "type must not be null"

    .line 7
    .line 8
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zzk:Lcom/google/ads/interactivemedia/v3/internal/zzyx;

    .line 12
    .line 13
    invoke-virtual {v0, p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzyx;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzaca;Lcom/google/ads/interactivemedia/v3/internal/zzwk;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zzk:Lcom/google/ads/interactivemedia/v3/internal/zzyx;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zzb:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_3

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/zzwk;

    .line 39
    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    if-ne v2, p1, :cond_1

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-interface {v2, p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzwk;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzvr;Lcom/google/ads/interactivemedia/v3/internal/zzaca;)Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    return-object v2

    .line 53
    :cond_3
    if-nez v1, :cond_4

    .line 54
    .line 55
    invoke-virtual {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzaca;)Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1

    .line 60
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 61
    .line 62
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    const-string v0, "GSON cannot serialize or deserialize "

    .line 67
    .line 68
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1
.end method

.method public final zzc(Ljava/io/Writer;)Lcom/google/ads/interactivemedia/v3/internal/zzace;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzace;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzace;-><init>(Ljava/io/Writer;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzvl;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzo(Lcom/google/ads/interactivemedia/v3/internal/zzvl;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzp(Z)V

    .line 13
    .line 14
    .line 15
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/zzwg;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzr(Lcom/google/ads/interactivemedia/v3/internal/zzwg;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzq(Z)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public final zzd(Lcom/google/ads/interactivemedia/v3/internal/zzacc;Lcom/google/ads/interactivemedia/v3/internal/zzaca;)Ljava/lang/Object;
    .locals 5

    .line 1
    const-string v0, "AssertionError (GSON 2.10.1): "

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzt()Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzt()Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/zzwg;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 12
    .line 13
    if-ne v2, v3, :cond_0

    .line 14
    .line 15
    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/zzwg;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 16
    .line 17
    invoke-virtual {p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzw(Lcom/google/ads/interactivemedia/v3/internal/zzwg;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzr()I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzaca;)Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzwj;->read(Lcom/google/ads/interactivemedia/v3/internal/zzacc;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p2
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    goto :goto_4

    .line 33
    :catchall_0
    move-exception p2

    .line 34
    goto :goto_5

    .line 35
    :catch_0
    move-exception p2

    .line 36
    goto :goto_0

    .line 37
    :catch_1
    move-exception p2

    .line 38
    goto :goto_1

    .line 39
    :catch_2
    move-exception p2

    .line 40
    goto :goto_2

    .line 41
    :catch_3
    move-exception p2

    .line 42
    goto :goto_3

    .line 43
    :goto_0
    :try_start_2
    new-instance v2, Ljava/lang/AssertionError;

    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-direct {v2, v0, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    throw v2

    .line 65
    :goto_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzwe;

    .line 66
    .line 67
    invoke-direct {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzwe;-><init>(Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    throw v0

    .line 71
    :goto_2
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzwe;

    .line 72
    .line 73
    invoke-direct {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzwe;-><init>(Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    :catch_4
    move-exception p2

    .line 78
    const/4 v2, 0x1

    .line 79
    :goto_3
    if-eqz v2, :cond_1

    .line 80
    .line 81
    const/4 p2, 0x0

    .line 82
    :goto_4
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzw(Lcom/google/ads/interactivemedia/v3/internal/zzwg;)V

    .line 83
    .line 84
    .line 85
    return-object p2

    .line 86
    :cond_1
    :try_start_3
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzwe;

    .line 87
    .line 88
    invoke-direct {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzwe;-><init>(Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    :goto_5
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzw(Lcom/google/ads/interactivemedia/v3/internal/zzwg;)V

    .line 93
    .line 94
    .line 95
    throw p2
.end method

.method public final zze(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaca;->zza(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/zzaca;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_3

    .line 9
    :cond_0
    new-instance v1, Ljava/io/StringReader;

    .line 10
    .line 11
    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzacc;

    .line 15
    .line 16
    invoke-direct {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;-><init>(Ljava/io/Reader;)V

    .line 17
    .line 18
    .line 19
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzwg;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzw(Lcom/google/ads/interactivemedia/v3/internal/zzwg;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zzd(Lcom/google/ads/interactivemedia/v3/internal/zzacc;Lcom/google/ads/interactivemedia/v3/internal/zzaca;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    :try_start_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzr()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const/16 v1, 0xa

    .line 35
    .line 36
    if-ne p1, v1, :cond_1

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzwe;

    .line 40
    .line 41
    const-string p2, "JSON document was not fully consumed."

    .line 42
    .line 43
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzwe;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzacf; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :catch_0
    move-exception p1

    .line 48
    goto :goto_0

    .line 49
    :catch_1
    move-exception p1

    .line 50
    goto :goto_1

    .line 51
    :goto_0
    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/zzvx;

    .line 52
    .line 53
    invoke-direct {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvx;-><init>(Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    throw p2

    .line 57
    :goto_1
    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/zzwe;

    .line 58
    .line 59
    invoke-direct {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzwe;-><init>(Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    throw p2

    .line 63
    :cond_2
    :goto_2
    move-object p1, v0

    .line 64
    :goto_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 65
    .line 66
    if-ne p2, v0, :cond_3

    .line 67
    .line 68
    const-class p2, Ljava/lang/Integer;

    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 72
    .line 73
    if-ne p2, v0, :cond_4

    .line 74
    .line 75
    const-class p2, Ljava/lang/Float;

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_4
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 79
    .line 80
    if-ne p2, v0, :cond_5

    .line 81
    .line 82
    const-class p2, Ljava/lang/Byte;

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 86
    .line 87
    if-ne p2, v0, :cond_6

    .line 88
    .line 89
    const-class p2, Ljava/lang/Double;

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_6
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 93
    .line 94
    if-ne p2, v0, :cond_7

    .line 95
    .line 96
    const-class p2, Ljava/lang/Long;

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_7
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 100
    .line 101
    if-ne p2, v0, :cond_8

    .line 102
    .line 103
    const-class p2, Ljava/lang/Character;

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_8
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 107
    .line 108
    if-ne p2, v0, :cond_9

    .line 109
    .line 110
    const-class p2, Ljava/lang/Boolean;

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_9
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 114
    .line 115
    if-ne p2, v0, :cond_a

    .line 116
    .line 117
    const-class p2, Ljava/lang/Short;

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_a
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 121
    .line 122
    if-ne p2, v0, :cond_b

    .line 123
    .line 124
    const-class p2, Ljava/lang/Void;

    .line 125
    .line 126
    :cond_b
    :goto_4
    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    return-object p1
.end method

.method public final zzf(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/zzvy;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzvy;

    .line 4
    .line 5
    new-instance v0, Ljava/io/StringWriter;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zzc(Ljava/io/Writer;)Lcom/google/ads/interactivemedia/v3/internal/zzace;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zzi(Lcom/google/ads/interactivemedia/v3/internal/zzvw;Lcom/google/ads/interactivemedia/v3/internal/zzace;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :catch_0
    move-exception p1

    .line 23
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzvx;

    .line 24
    .line 25
    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvx;-><init>(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    throw v0

    .line 29
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zzc(Ljava/io/Writer;)Lcom/google/ads/interactivemedia/v3/internal/zzace;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p0, p1, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zzh(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/ads/interactivemedia/v3/internal/zzace;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1

    .line 50
    :catch_1
    move-exception p1

    .line 51
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzvx;

    .line 52
    .line 53
    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvx;-><init>(Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    throw v0
.end method

.method public final zzh(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/ads/interactivemedia/v3/internal/zzace;)V
    .locals 6

    .line 1
    const-string v0, "AssertionError (GSON 2.10.1): "

    .line 2
    .line 3
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaca;->zzb(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/internal/zzaca;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzaca;)Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzn()Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzn()Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/zzwg;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 20
    .line 21
    if-ne v2, v3, :cond_0

    .line 22
    .line 23
    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/zzwg;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzwg;

    .line 24
    .line 25
    invoke-virtual {p3, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzr(Lcom/google/ads/interactivemedia/v3/internal/zzwg;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzt()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzs()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/4 v4, 0x1

    .line 37
    invoke-virtual {p3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzp(Z)V

    .line 38
    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-virtual {p3, v4}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzq(Z)V

    .line 42
    .line 43
    .line 44
    :try_start_0
    invoke-virtual {p2, p3, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzwj;->write(Lcom/google/ads/interactivemedia/v3/internal/zzace;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzr(Lcom/google/ads/interactivemedia/v3/internal/zzwg;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzp(Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzq(Z)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p1

    .line 60
    :try_start_1
    new-instance p2, Ljava/lang/AssertionError;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-direct {p2, v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    throw p2

    .line 82
    :catch_1
    move-exception p1

    .line 83
    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/zzvx;

    .line 84
    .line 85
    invoke-direct {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvx;-><init>(Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :goto_0
    invoke-virtual {p3, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzr(Lcom/google/ads/interactivemedia/v3/internal/zzwg;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzp(Z)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzq(Z)V

    .line 96
    .line 97
    .line 98
    throw p1
.end method
