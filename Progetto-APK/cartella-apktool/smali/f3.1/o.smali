.class public final Lf3/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/util/List;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/List;

.field public final e:Lf3/n;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "PG"

    .line 2
    .line 3
    const-string v1, "G"

    .line 4
    .line 5
    const-string v2, "MA"

    .line 6
    .line 7
    const-string v3, "T"

    .line 8
    .line 9
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lf3/o;->f:Ljava/util/List;

    .line 18
    .line 19
    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Ljava/util/List;Lf3/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lf3/o;->a:I

    .line 5
    .line 6
    iput p2, p0, Lf3/o;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lf3/o;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lf3/o;->d:Ljava/util/List;

    .line 11
    .line 12
    iput-object p5, p0, Lf3/o;->e:Lf3/n;

    .line 13
    .line 14
    return-void
.end method
