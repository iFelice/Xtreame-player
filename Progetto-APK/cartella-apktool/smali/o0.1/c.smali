.class public final Lo0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lz4/q;

.field public static final c:Lo0/c;


# instance fields
.field public final a:Lz4/d0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lz4/b0;->G:Lz4/b0;

    .line 2
    .line 3
    new-instance v1, LC0/h;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, v2}, LC0/h;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v3, Lz4/q;

    .line 13
    .line 14
    invoke-direct {v3, v1, v0}, Lz4/q;-><init>(Ly4/h;Lz4/c0;)V

    .line 15
    .line 16
    .line 17
    sput-object v3, Lo0/c;->b:Lz4/q;

    .line 18
    .line 19
    new-instance v0, Lo0/c;

    .line 20
    .line 21
    sget-object v1, Lz4/H;->H:Lz4/F;

    .line 22
    .line 23
    sget-object v1, Lz4/d0;->K:Lz4/d0;

    .line 24
    .line 25
    invoke-direct {v0, v1}, Lo0/c;-><init>(Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    sput-object v0, Lo0/c;->c:Lo0/c;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-static {v0}, Lp0/M;->L(I)V

    .line 32
    .line 33
    .line 34
    invoke-static {v2}, Lp0/M;->L(I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lo0/c;->b:Lz4/q;

    .line 5
    .line 6
    invoke-static {v0, p1}, Lz4/H;->B(Ljava/util/Comparator;Ljava/lang/Iterable;)Lz4/d0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lo0/c;->a:Lz4/d0;

    .line 11
    .line 12
    return-void
.end method
