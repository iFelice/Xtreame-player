.class public final Lg0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile a:Z

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, LU4/b;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, LU4/b;-><init>(I)V

    iput-object v0, p0, Lg0/a;->b:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lg0/a;->c:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lg0/a;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/Fw;Lcom/google/android/gms/internal/ads/re;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg0/a;->a:Z

    iput-object p2, p0, Lg0/a;->b:Ljava/lang/Object;

    iput-object p3, p0, Lg0/a;->c:Ljava/lang/Object;

    iput-object p1, p0, Lg0/a;->d:Ljava/lang/Object;

    return-void
.end method
