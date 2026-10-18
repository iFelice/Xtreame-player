.class public abstract Lz4/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lz4/v;

.field public static final b:Lz4/w;

.field public static final c:Lz4/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lz4/v;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lz4/x;->a:Lz4/v;

    .line 7
    .line 8
    new-instance v0, Lz4/w;

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    invoke-direct {v0, v1}, Lz4/w;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lz4/x;->b:Lz4/w;

    .line 15
    .line 16
    new-instance v0, Lz4/w;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-direct {v0, v1}, Lz4/w;-><init>(I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lz4/x;->c:Lz4/w;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public abstract a(II)Lz4/x;
.end method

.method public abstract b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lz4/x;
.end method

.method public abstract c(ZZ)Lz4/x;
.end method

.method public abstract d(ZZ)Lz4/x;
.end method

.method public abstract e()I
.end method
