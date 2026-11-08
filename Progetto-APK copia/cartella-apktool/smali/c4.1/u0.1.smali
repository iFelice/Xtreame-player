.class public final enum Lc4/u0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum H:Lc4/u0;

.field public static final enum I:Lc4/u0;

.field public static final enum J:Lc4/u0;

.field public static final enum K:Lc4/u0;

.field public static final synthetic L:[Lc4/u0;


# instance fields
.field public final G:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lc4/u0;

    .line 2
    .line 3
    const-string v1, "UNINITIALIZED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "uninitialized"

    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3}, Lc4/u0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lc4/u0;->H:Lc4/u0;

    .line 12
    .line 13
    new-instance v1, Lc4/u0;

    .line 14
    .line 15
    const-string v3, "POLICY"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    const-string v5, "eu_consent_policy"

    .line 19
    .line 20
    invoke-direct {v1, v3, v4, v5}, Lc4/u0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lc4/u0;->I:Lc4/u0;

    .line 24
    .line 25
    new-instance v3, Lc4/u0;

    .line 26
    .line 27
    const-string v5, "DENIED"

    .line 28
    .line 29
    const/4 v6, 0x2

    .line 30
    const-string v7, "denied"

    .line 31
    .line 32
    invoke-direct {v3, v5, v6, v7}, Lc4/u0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v3, Lc4/u0;->J:Lc4/u0;

    .line 36
    .line 37
    new-instance v5, Lc4/u0;

    .line 38
    .line 39
    const-string v7, "GRANTED"

    .line 40
    .line 41
    const/4 v8, 0x3

    .line 42
    const-string v9, "granted"

    .line 43
    .line 44
    invoke-direct {v5, v7, v8, v9}, Lc4/u0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v5, Lc4/u0;->K:Lc4/u0;

    .line 48
    .line 49
    const/4 v7, 0x4

    .line 50
    new-array v7, v7, [Lc4/u0;

    .line 51
    .line 52
    aput-object v0, v7, v2

    .line 53
    .line 54
    aput-object v1, v7, v4

    .line 55
    .line 56
    aput-object v3, v7, v6

    .line 57
    .line 58
    aput-object v5, v7, v8

    .line 59
    .line 60
    sput-object v7, Lc4/u0;->L:[Lc4/u0;

    .line 61
    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lc4/u0;->G:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static values()[Lc4/u0;
    .locals 1

    .line 1
    sget-object v0, Lc4/u0;->L:[Lc4/u0;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lc4/u0;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lc4/u0;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc4/u0;->G:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
