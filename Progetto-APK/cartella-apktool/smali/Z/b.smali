.class public final LZ/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:LZ/b;


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LZ/b;

    .line 2
    .line 3
    invoke-direct {v0}, LZ/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LZ/b;->c:LZ/b;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lu6/s;->G:Lu6/s;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, LZ/b;->a:Ljava/util/Set;

    .line 7
    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, LZ/b;->b:Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    return-void
.end method
