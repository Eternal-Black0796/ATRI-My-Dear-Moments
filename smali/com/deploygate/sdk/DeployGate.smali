.class public Lcom/deploygate/sdk/DeployGate;
.super Ljava/lang/Object;
.source "DeployGate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deploygate/sdk/DeployGate$LogCatTransportWorker;
    }
.end annotation


# static fields
.field private static final ACTION_DEPLOYGATE_STARTED:Ljava/lang/String; = "com.deploygate.action.ServiceStarted"

.field private static final DEPLOYGATE_FINGERPRINTS:[Ljava/lang/String;

.field private static final DEPLOYGATE_PACKAGE:Ljava/lang/String; = "com.deploygate"

.field private static final SDK_VERSION:I = 0x4

.field private static final SERIALIZED_EXCEPTION_SUPPORT_CLIENT_VERSION:I = 0x2a

.field private static final TAG:Ljava/lang/String; = "DeployGate"

.field private static sInstance:Lcom/deploygate/sdk/DeployGate;


# instance fields
.field private mAppIsAuthorized:Z

.field private mAppIsManaged:Z

.field private mAppIsStopRequested:Z

.field private mAppUpdateAvailable:Z

.field private mAppUpdateMessage:Ljava/lang/String;

.field private mAppUpdateRevision:I

.field private mAppUpdateVersionCode:I

.field private mAppUpdateVersionName:Ljava/lang/String;

.field private final mApplicationContext:Landroid/content/Context;

.field private mAuthor:Ljava/lang/String;

.field private final mCallbacks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/deploygate/sdk/DeployGateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentRevision:I

.field private mDeployGateVersionCode:I

.field private mDistributionId:Ljava/lang/String;

.field private mDistributionTitle:Ljava/lang/String;

.field private mDistributionUserName:Ljava/lang/String;

.field private mExpectedAuthor:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

.field private mIsDeployGateAvailable:Z

.field private mLogcatThread:Ljava/lang/Thread;

.field private mLogcatWorker:Lcom/deploygate/sdk/DeployGate$LogCatTransportWorker;

.field private mLoginUsername:Ljava/lang/String;

.field private final mRemoteCallback:Lcom/deploygate/service/IDeployGateSdkServiceCallback;

.field private mRemoteService:Lcom/deploygate/service/IDeployGateSdkService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "2f97f647645cb762bf5fc1445599a954e6ad76e7"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "c1f285f69cc02a397135ed182aa79af53d5d20a1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "234eff4a1600a7aa78bf68adfbb15786e886ae1a"

    aput-object v2, v0, v1

    .line 63
    sput-object v0, Lcom/deploygate/sdk/DeployGate;->DEPLOYGATE_FINGERPRINTS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/deploygate/sdk/DeployGateCallback;)V
    .locals 1

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Lcom/deploygate/sdk/DeployGate$1;

    invoke-direct {v0, p0}, Lcom/deploygate/sdk/DeployGate$1;-><init>(Lcom/deploygate/sdk/DeployGate;)V

    iput-object v0, p0, Lcom/deploygate/sdk/DeployGate;->mRemoteCallback:Lcom/deploygate/service/IDeployGateSdkServiceCallback;

    .line 233
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/deploygate/sdk/DeployGate;->mHandler:Landroid/os/Handler;

    .line 234
    iput-object p1, p0, Lcom/deploygate/sdk/DeployGate;->mApplicationContext:Landroid/content/Context;

    .line 235
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/deploygate/sdk/DeployGate;->mCallbacks:Ljava/util/HashSet;

    .line 236
    iput-object p2, p0, Lcom/deploygate/sdk/DeployGate;->mExpectedAuthor:Ljava/lang/String;

    .line 238
    invoke-direct {p0}, Lcom/deploygate/sdk/DeployGate;->prepareBroadcastReceiver()V

    if-eqz p3, :cond_0

    .line 241
    invoke-virtual {p1, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_0
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/deploygate/sdk/DeployGate;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 244
    invoke-direct {p0, p2}, Lcom/deploygate/sdk/DeployGate;->initService(Z)Z

    return-void
.end method

.method static synthetic access$000(Lcom/deploygate/sdk/DeployGate;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/deploygate/sdk/DeployGate;->onOneshotLogcat()V

    return-void
.end method

.method static synthetic access$100(Lcom/deploygate/sdk/DeployGate;Z)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/deploygate/sdk/DeployGate;->onEnableLogcat(Z)V

    return-void
.end method

.method static synthetic access$1002(Lcom/deploygate/sdk/DeployGate;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/deploygate/sdk/DeployGate;->mDistributionId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/deploygate/sdk/DeployGate;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/deploygate/sdk/DeployGate;->mDistributionTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/deploygate/sdk/DeployGate;)Ljava/util/HashSet;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/deploygate/sdk/DeployGate;->mCallbacks:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/deploygate/sdk/DeployGate;)Landroid/os/Handler;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/deploygate/sdk/DeployGate;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/deploygate/sdk/DeployGate;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/deploygate/sdk/DeployGate;->mIsDeployGateAvailable:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/deploygate/sdk/DeployGate;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/deploygate/sdk/DeployGate;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/deploygate/sdk/DeployGate;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/deploygate/sdk/DeployGate;->mAppUpdateAvailable:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/deploygate/sdk/DeployGate;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/deploygate/sdk/DeployGate;->mAppUpdateRevision:I

    return p1
.end method

.method static synthetic access$1802(Lcom/deploygate/sdk/DeployGate;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/deploygate/sdk/DeployGate;->mAppUpdateVersionName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/deploygate/sdk/DeployGate;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/deploygate/sdk/DeployGate;->mAppUpdateVersionCode:I

    return p1
.end method

.method static synthetic access$2002(Lcom/deploygate/sdk/DeployGate;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/deploygate/sdk/DeployGate;->mAppUpdateMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/deploygate/sdk/DeployGate;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/deploygate/sdk/DeployGate;->mAppIsManaged:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/deploygate/sdk/DeployGate;)Z
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/deploygate/sdk/DeployGate;->isDeployGateAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/deploygate/sdk/DeployGate;Z)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/deploygate/sdk/DeployGate;->bindToService(Z)V

    return-void
.end method

.method static synthetic access$2302(Lcom/deploygate/sdk/DeployGate;Lcom/deploygate/service/IDeployGateSdkService;)Lcom/deploygate/service/IDeployGateSdkService;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/deploygate/sdk/DeployGate;->mRemoteService:Lcom/deploygate/service/IDeployGateSdkService;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/deploygate/sdk/DeployGate;Z)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/deploygate/sdk/DeployGate;->requestServiceInit(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/deploygate/sdk/DeployGate;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/deploygate/sdk/DeployGate;->mAppIsAuthorized:Z

    return p1
.end method

.method static synthetic access$402(Lcom/deploygate/sdk/DeployGate;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/deploygate/sdk/DeployGate;->mAppIsStopRequested:Z

    return p1
.end method

.method static synthetic access$502(Lcom/deploygate/sdk/DeployGate;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/deploygate/sdk/DeployGate;->mLoginUsername:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/deploygate/sdk/DeployGate;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/deploygate/sdk/DeployGate;->mDistributionUserName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/deploygate/sdk/DeployGate;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/deploygate/sdk/DeployGate;->mAuthor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/deploygate/sdk/DeployGate;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/deploygate/sdk/DeployGate;->mDeployGateVersionCode:I

    return p1
.end method

.method static synthetic access$902(Lcom/deploygate/sdk/DeployGate;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/deploygate/sdk/DeployGate;->mCurrentRevision:I

    return p1
.end method

.method private bindToService(Z)V
    .locals 3

    .line 286
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/deploygate/service/IDeployGateSdkService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.deploygate"

    .line 287
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    iget-object v1, p0, Lcom/deploygate/sdk/DeployGate;->mApplicationContext:Landroid/content/Context;

    new-instance v2, Lcom/deploygate/sdk/DeployGate$4;

    invoke-direct {v2, p0, p1}, Lcom/deploygate/sdk/DeployGate$4;-><init>(Lcom/deploygate/sdk/DeployGate;Z)V

    const/4 p1, 0x1

    invoke-virtual {v1, v0, v2, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public static composeComment()V
    .locals 1

    const/4 v0, 0x0

    .line 1158
    invoke-static {v0}, Lcom/deploygate/sdk/DeployGate;->composeComment(Ljava/lang/String;)V

    return-void
.end method

.method public static composeComment(Ljava/lang/String;)V
    .locals 2

    .line 1171
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/deploygate/sdk/DeployGate;->mDistributionId:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1174
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "comment"

    .line 1175
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    sget-object p0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    const-string v1, "composeComment"

    invoke-direct {p0, v1, v0}, Lcom/deploygate/sdk/DeployGate;->invokeAction(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static getAuthorUsername()Ljava/lang/String;
    .locals 1

    .line 691
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-eqz v0, :cond_0

    .line 692
    invoke-static {}, Lcom/deploygate/sdk/DeployGate;->waitForInitialized()V

    .line 693
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    iget-object v0, v0, Lcom/deploygate/sdk/DeployGate;->mAuthor:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCurrentRevision()I
    .locals 1

    .line 977
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-eqz v0, :cond_0

    .line 978
    iget v0, v0, Lcom/deploygate/sdk/DeployGate;->mCurrentRevision:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getDeployGatePackageSignature()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 326
    :try_start_0
    iget-object v1, p0, Lcom/deploygate/sdk/DeployGate;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.deploygate"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_2

    .line 331
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    const-string v2, "SHA1"

    .line 336
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 342
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 344
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 345
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 347
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "DeployGate"

    const-string v3, "SHA1 is not supported on this platform?"

    .line 338
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static getDeployGateVersionCode()I
    .locals 1

    .line 1043
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1046
    :cond_0
    iget v0, v0, Lcom/deploygate/sdk/DeployGate;->mDeployGateVersionCode:I

    return v0
.end method

.method public static getDistributionId()Ljava/lang/String;
    .locals 2

    .line 1009
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1012
    :cond_0
    iget-object v0, v0, Lcom/deploygate/sdk/DeployGate;->mDistributionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 1015
    :cond_1
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    iget-object v0, v0, Lcom/deploygate/sdk/DeployGate;->mDistributionId:Ljava/lang/String;

    return-object v0
.end method

.method public static getDistributionTitle()Ljava/lang/String;
    .locals 2

    .line 1027
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1030
    :cond_0
    iget-object v0, v0, Lcom/deploygate/sdk/DeployGate;->mDistributionTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 1033
    :cond_1
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    iget-object v0, v0, Lcom/deploygate/sdk/DeployGate;->mDistributionTitle:Ljava/lang/String;

    return-object v0
.end method

.method public static getDistributionUrl()Ljava/lang/String;
    .locals 2

    .line 991
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 994
    :cond_0
    iget-object v0, v0, Lcom/deploygate/sdk/DeployGate;->mDistributionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 997
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://deploygate.com/distributions/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    iget-object v1, v1, Lcom/deploygate/sdk/DeployGate;->mDistributionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDistributionUserName()Ljava/lang/String;
    .locals 1

    .line 1198
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1201
    :cond_0
    iget-object v0, v0, Lcom/deploygate/sdk/DeployGate;->mDistributionUserName:Ljava/lang/String;

    return-object v0
.end method

.method static getInstance()Lcom/deploygate/sdk/DeployGate;
    .locals 1

    .line 898
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    return-object v0
.end method

.method public static getLoginUsername()Ljava/lang/String;
    .locals 1

    .line 664
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-eqz v0, :cond_0

    .line 665
    invoke-static {}, Lcom/deploygate/sdk/DeployGate;->waitForInitialized()V

    .line 666
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    iget-object v0, v0, Lcom/deploygate/sdk/DeployGate;->mLoginUsername:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    .line 927
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    if-eqz p0, :cond_0

    .line 929
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 930
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 931
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 934
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    return-object p0
.end method

.method public static getUpdateMessage()Ljava/lang/String;
    .locals 3

    .line 1114
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/deploygate/sdk/DeployGate;->mDeployGateVersionCode:I

    const/16 v2, 0x27

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 1117
    :cond_0
    iget-object v0, v0, Lcom/deploygate/sdk/DeployGate;->mAppUpdateMessage:Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private initService(Z)Z
    .locals 2

    .line 248
    invoke-direct {p0}, Lcom/deploygate/sdk/DeployGate;->isDeployGateAvailable()Z

    move-result v0

    const-string v1, "DeployGate"

    if-eqz v0, :cond_0

    const-string v0, "DeployGate installation detected. Initializing."

    .line 249
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-direct {p0, p1}, Lcom/deploygate/sdk/DeployGate;->bindToService(Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "DeployGate is not available on this device."

    .line 253
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object p1, p0, Lcom/deploygate/sdk/DeployGate;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 p1, 0x0

    .line 255
    iput-boolean p1, p0, Lcom/deploygate/sdk/DeployGate;->mIsDeployGateAvailable:Z

    .line 256
    invoke-virtual {p0}, Lcom/deploygate/sdk/DeployGate;->callbackDeployGateUnavailable()V

    return p1
.end method

.method public static install(Landroid/app/Application;)V
    .locals 1

    const/4 v0, 0x0

    .line 372
    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/deploygate/sdk/DeployGate;->install(Landroid/app/Application;Ljava/lang/String;)V

    return-void
.end method

.method public static install(Landroid/app/Application;Lcom/deploygate/sdk/DeployGateCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 419
    invoke-static {p0, v0, p1}, Lcom/deploygate/sdk/DeployGate;->install(Landroid/app/Application;Ljava/lang/String;Lcom/deploygate/sdk/DeployGateCallback;)V

    return-void
.end method

.method public static install(Landroid/app/Application;Lcom/deploygate/sdk/DeployGateCallback;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 464
    invoke-static {p0, v0, p1, p2}, Lcom/deploygate/sdk/DeployGate;->install(Landroid/app/Application;Ljava/lang/String;Lcom/deploygate/sdk/DeployGateCallback;Z)V

    return-void
.end method

.method public static install(Landroid/app/Application;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 392
    invoke-static {p0, p1, v0}, Lcom/deploygate/sdk/DeployGate;->install(Landroid/app/Application;Ljava/lang/String;Lcom/deploygate/sdk/DeployGateCallback;)V

    return-void
.end method

.method public static install(Landroid/app/Application;Ljava/lang/String;Lcom/deploygate/sdk/DeployGateCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 441
    invoke-static {p0, p1, p2, v0}, Lcom/deploygate/sdk/DeployGate;->install(Landroid/app/Application;Ljava/lang/String;Lcom/deploygate/sdk/DeployGateCallback;Z)V

    return-void
.end method

.method public static install(Landroid/app/Application;Ljava/lang/String;Lcom/deploygate/sdk/DeployGateCallback;Z)V
    .locals 1

    .line 481
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-eqz v0, :cond_0

    const-string p0, "DeployGate"

    const-string p1, "DeployGate.install was already called. Ignoring."

    .line 482
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 486
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/deploygate/sdk/DeployGate;->isDebuggable(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_1

    return-void

    .line 489
    :cond_1
    new-instance p3, Lcom/deploygate/sdk/DeployGateUncaughtExceptionHandler;

    .line 490
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/deploygate/sdk/DeployGateUncaughtExceptionHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 489
    invoke-static {p3}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 491
    new-instance p3, Lcom/deploygate/sdk/DeployGate;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p3, p0, p1, p2}, Lcom/deploygate/sdk/DeployGate;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/deploygate/sdk/DeployGateCallback;)V

    sput-object p3, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    return-void
.end method

.method public static installUpdate()V
    .locals 3

    .line 1128
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const-string v2, "installUpdate"

    .line 1131
    invoke-direct {v0, v2, v1}, Lcom/deploygate/sdk/DeployGate;->invokeAction(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private invokeAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1180
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate;->mRemoteService:Lcom/deploygate/service/IDeployGateSdkService;

    if-nez v0, :cond_0

    return-void

    .line 1183
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/deploygate/sdk/DeployGate;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/deploygate/service/IDeployGateSdkService;->sendEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to invoke "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " action: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DeployGate"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static isAuthorized()Z
    .locals 1

    .line 642
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-eqz v0, :cond_0

    .line 643
    invoke-static {}, Lcom/deploygate/sdk/DeployGate;->waitForInitialized()V

    .line 644
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    iget-boolean v0, v0, Lcom/deploygate/sdk/DeployGate;->mAppIsAuthorized:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isDebuggable(Landroid/content/Context;)Z
    .locals 2

    .line 792
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 795
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v1
.end method

.method private isDeployGateAvailable()Z
    .locals 6

    .line 262
    invoke-direct {p0}, Lcom/deploygate/sdk/DeployGate;->getDeployGatePackageSignature()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 265
    :cond_0
    sget-object v2, Lcom/deploygate/sdk/DeployGate;->DEPLOYGATE_FINGERPRINTS:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 266
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static isDeployGateAvaliable()Z
    .locals 1

    .line 592
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-eqz v0, :cond_0

    .line 593
    invoke-static {}, Lcom/deploygate/sdk/DeployGate;->waitForInitialized()V

    .line 594
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    iget-boolean v0, v0, Lcom/deploygate/sdk/DeployGate;->mIsDeployGateAvailable:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isInitialized()Z
    .locals 6

    .line 571
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, v0, Lcom/deploygate/sdk/DeployGate;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isManaged()Z
    .locals 1

    .line 616
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-eqz v0, :cond_0

    .line 617
    invoke-static {}, Lcom/deploygate/sdk/DeployGate;->waitForInitialized()V

    .line 618
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    iget-boolean v0, v0, Lcom/deploygate/sdk/DeployGate;->mAppIsManaged:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isStopRequested()Z
    .locals 1

    .line 776
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-eqz v0, :cond_0

    .line 777
    invoke-static {}, Lcom/deploygate/sdk/DeployGate;->waitForInitialized()V

    .line 778
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    iget-boolean v0, v0, Lcom/deploygate/sdk/DeployGate;->mAppIsStopRequested:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static logDebug(Ljava/lang/String;)V
    .locals 2

    .line 738
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-eqz v0, :cond_0

    const-string v1, "debug"

    .line 739
    invoke-virtual {v0, v1, p0}, Lcom/deploygate/sdk/DeployGate;->sendLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static logError(Ljava/lang/String;)V
    .locals 2

    .line 708
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-eqz v0, :cond_0

    const-string v1, "error"

    .line 709
    invoke-virtual {v0, v1, p0}, Lcom/deploygate/sdk/DeployGate;->sendLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static logInfo(Ljava/lang/String;)V
    .locals 2

    .line 753
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-eqz v0, :cond_0

    const-string v1, "info"

    .line 754
    invoke-virtual {v0, v1, p0}, Lcom/deploygate/sdk/DeployGate;->sendLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static logVerbose(Ljava/lang/String;)V
    .locals 2

    .line 769
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-eqz v0, :cond_0

    const-string v1, "verbose"

    .line 770
    invoke-virtual {v0, v1, p0}, Lcom/deploygate/sdk/DeployGate;->sendLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static logWarn(Ljava/lang/String;)V
    .locals 2

    .line 723
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-eqz v0, :cond_0

    const-string v1, "warn"

    .line 724
    invoke-virtual {v0, v1, p0}, Lcom/deploygate/sdk/DeployGate;->sendLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onEnableLogcat(Z)V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate;->mRemoteService:Lcom/deploygate/service/IDeployGateSdkService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 202
    iget-object p1, p0, Lcom/deploygate/sdk/DeployGate;->mLogcatThread:Ljava/lang/Thread;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-nez p1, :cond_3

    .line 203
    :cond_1
    new-instance p1, Lcom/deploygate/sdk/DeployGate$LogCatTransportWorker;

    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate;->mApplicationContext:Landroid/content/Context;

    .line 204
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/deploygate/sdk/DeployGate;->mRemoteService:Lcom/deploygate/service/IDeployGateSdkService;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/deploygate/sdk/DeployGate$LogCatTransportWorker;-><init>(Ljava/lang/String;Lcom/deploygate/service/IDeployGateSdkService;Z)V

    iput-object p1, p0, Lcom/deploygate/sdk/DeployGate;->mLogcatWorker:Lcom/deploygate/sdk/DeployGate$LogCatTransportWorker;

    .line 205
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate;->mLogcatWorker:Lcom/deploygate/sdk/DeployGate$LogCatTransportWorker;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/deploygate/sdk/DeployGate;->mLogcatThread:Ljava/lang/Thread;

    .line 206
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 209
    :cond_2
    iget-object p1, p0, Lcom/deploygate/sdk/DeployGate;->mLogcatThread:Ljava/lang/Thread;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 210
    iget-object p1, p0, Lcom/deploygate/sdk/DeployGate;->mLogcatWorker:Lcom/deploygate/sdk/DeployGate$LogCatTransportWorker;

    invoke-virtual {p1}, Lcom/deploygate/sdk/DeployGate$LogCatTransportWorker;->stop()V

    .line 211
    iget-object p1, p0, Lcom/deploygate/sdk/DeployGate;->mLogcatThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    :goto_0
    return-void
.end method

.method private onOneshotLogcat()V
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate;->mLogcatThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    :cond_0
    new-instance v0, Lcom/deploygate/sdk/DeployGate$LogCatTransportWorker;

    iget-object v1, p0, Lcom/deploygate/sdk/DeployGate;->mApplicationContext:Landroid/content/Context;

    .line 191
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/deploygate/sdk/DeployGate;->mRemoteService:Lcom/deploygate/service/IDeployGateSdkService;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/deploygate/sdk/DeployGate$LogCatTransportWorker;-><init>(Ljava/lang/String;Lcom/deploygate/service/IDeployGateSdkService;Z)V

    iput-object v0, p0, Lcom/deploygate/sdk/DeployGate;->mLogcatWorker:Lcom/deploygate/sdk/DeployGate$LogCatTransportWorker;

    .line 192
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/deploygate/sdk/DeployGate;->mLogcatWorker:Lcom/deploygate/sdk/DeployGate$LogCatTransportWorker;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/deploygate/sdk/DeployGate;->mLogcatThread:Ljava/lang/Thread;

    .line 193
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method public static openComments()V
    .locals 3

    .line 1143
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/deploygate/sdk/DeployGate;->mDistributionId:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "openComments"

    .line 1146
    invoke-direct {v0, v2, v1}, Lcom/deploygate/sdk/DeployGate;->invokeAction(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private prepareBroadcastReceiver()V
    .locals 3

    .line 272
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.deploygate.action.ServiceStarted"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, Lcom/deploygate/sdk/DeployGate;->mApplicationContext:Landroid/content/Context;

    new-instance v2, Lcom/deploygate/sdk/DeployGate$3;

    invoke-direct {v2, p0}, Lcom/deploygate/sdk/DeployGate$3;-><init>(Lcom/deploygate/sdk/DeployGate;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static refresh()V
    .locals 1

    .line 505
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-eqz v0, :cond_0

    .line 506
    invoke-direct {v0}, Lcom/deploygate/sdk/DeployGate;->refreshInternal()V

    :cond_0
    return-void
.end method

.method private refreshInternal()V
    .locals 5

    .line 510
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 511
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/deploygate/sdk/DeployGate;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 512
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate;->mRemoteService:Lcom/deploygate/service/IDeployGateSdkService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 513
    invoke-direct {p0, v1}, Lcom/deploygate/sdk/DeployGate;->initService(Z)Z

    goto :goto_0

    .line 515
    :cond_0
    invoke-direct {p0, v1}, Lcom/deploygate/sdk/DeployGate;->requestServiceInit(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static registerCallback(Lcom/deploygate/sdk/DeployGateCallback;Z)V
    .locals 1

    .line 532
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 537
    :cond_1
    invoke-direct {v0, p0, p1}, Lcom/deploygate/sdk/DeployGate;->registerCallbackInternal(Lcom/deploygate/sdk/DeployGateCallback;Z)V

    return-void
.end method

.method private registerCallbackInternal(Lcom/deploygate/sdk/DeployGateCallback;Z)V
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate;->mCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 543
    invoke-static {}, Lcom/deploygate/sdk/DeployGate;->refresh()V

    :cond_0
    return-void
.end method

.method public static requestLogCat()V
    .locals 1

    .line 961
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-eqz v0, :cond_0

    .line 962
    invoke-direct {v0}, Lcom/deploygate/sdk/DeployGate;->onOneshotLogcat()V

    :cond_0
    return-void
.end method

.method private requestServiceInit(Z)V
    .locals 3

    .line 304
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "isBoot"

    .line 305
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 306
    invoke-virtual {p0}, Lcom/deploygate/sdk/DeployGate;->canLogCat()Z

    move-result p1

    const-string v1, "canLogCat"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 307
    iget-object p1, p0, Lcom/deploygate/sdk/DeployGate;->mExpectedAuthor:Ljava/lang/String;

    const-string v1, "expectedAuthor"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "sdkVersion"

    const/4 v1, 0x4

    .line 308
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 310
    :try_start_0
    iget-object p1, p0, Lcom/deploygate/sdk/DeployGate;->mRemoteService:Lcom/deploygate/service/IDeployGateSdkService;

    iget-object v1, p0, Lcom/deploygate/sdk/DeployGate;->mRemoteCallback:Lcom/deploygate/service/IDeployGateSdkServiceCallback;

    iget-object v2, p0, Lcom/deploygate/sdk/DeployGate;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2, v0}, Lcom/deploygate/service/IDeployGateSdkService;->init(Lcom/deploygate/service/IDeployGateSdkServiceCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "DeployGate"

    const-string v0, "DeployGate service failed to be initialized."

    .line 312
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static unregisterCallback(Lcom/deploygate/sdk/DeployGateCallback;)V
    .locals 1

    .line 554
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 559
    :cond_1
    iget-object v0, v0, Lcom/deploygate/sdk/DeployGate;->mCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private static waitForInitialized()V
    .locals 2

    .line 785
    :try_start_0
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    iget-object v0, v0, Lcom/deploygate/sdk/DeployGate;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "DeployGate"

    const-string v1, "Interrupted while waiting initialization"

    .line 787
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method callbackDeployGateUnavailable()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/deploygate/sdk/DeployGate$2;

    invoke-direct {v1, p0}, Lcom/deploygate/sdk/DeployGate$2;-><init>(Lcom/deploygate/sdk/DeployGate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected canLogCat()Z
    .locals 4

    .line 317
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    return v1

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/deploygate/sdk/DeployGate;->mApplicationContext:Landroid/content/Context;

    .line 320
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.READ_LOGS"

    .line 319
    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getUpdateRevision()I
    .locals 1

    .line 1070
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1073
    :cond_0
    iget v0, v0, Lcom/deploygate/sdk/DeployGate;->mAppUpdateRevision:I

    return v0
.end method

.method public getUpdateVersionCode()I
    .locals 1

    .line 1083
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1086
    :cond_0
    iget v0, v0, Lcom/deploygate/sdk/DeployGate;->mAppUpdateVersionCode:I

    return v0
.end method

.method public getUpdateVersionName()Ljava/lang/String;
    .locals 1

    .line 1096
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1099
    :cond_0
    iget-object v0, v0, Lcom/deploygate/sdk/DeployGate;->mAppUpdateVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public hasUpdate()Z
    .locals 1

    .line 1057
    sget-object v0, Lcom/deploygate/sdk/DeployGate;->sInstance:Lcom/deploygate/sdk/DeployGate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1060
    :cond_0
    iget-boolean v0, v0, Lcom/deploygate/sdk/DeployGate;->mAppUpdateAvailable:Z

    return v0
.end method

.method sendCrashReport(Ljava/lang/Throwable;)V
    .locals 4

    .line 902
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate;->mRemoteService:Lcom/deploygate/service/IDeployGateSdkService;

    if-nez v0, :cond_0

    return-void

    .line 905
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 907
    :try_start_0
    invoke-static {}, Lcom/deploygate/sdk/DeployGate;->getDeployGateVersionCode()I

    move-result v1

    const/16 v2, 0x2a

    if-lt v1, v2, :cond_2

    .line 908
    invoke-static {p1}, Lcom/deploygate/sdk/DeployGate;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 909
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "exceptionRootCauseClassName"

    .line 910
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "exceptionRootCauseMessage"

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, ""

    .line 911
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "exceptionStackTraces"

    .line 912
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, "exception"

    .line 914
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 917
    :goto_1
    iget-object p1, p0, Lcom/deploygate/sdk/DeployGate;->mRemoteService:Lcom/deploygate/service/IDeployGateSdkService;

    iget-object v1, p0, Lcom/deploygate/sdk/DeployGate;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reportCrash"

    invoke-interface {p1, v1, v2, v0}, Lcom/deploygate/service/IDeployGateSdkService;->sendEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to send crash report: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DeployGate"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method sendLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 938
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate;->mRemoteService:Lcom/deploygate/service/IDeployGateSdkService;

    if-nez v0, :cond_0

    return-void

    .line 940
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "log"

    .line 941
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p2, "logType"

    .line 942
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 944
    :try_start_0
    iget-object p1, p0, Lcom/deploygate/sdk/DeployGate;->mRemoteService:Lcom/deploygate/service/IDeployGateSdkService;

    iget-object p2, p0, Lcom/deploygate/sdk/DeployGate;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "customLog"

    invoke-interface {p1, p2, v1, v0}, Lcom/deploygate/service/IDeployGateSdkService;->sendEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 947
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to send custom log: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DeployGate"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
