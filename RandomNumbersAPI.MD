Your plan to use Bitcoin mining hashes as seeds for a random number generator (RNG) source API, offering bundles of random numbers as a streaming service without storing the hashes or random numbers, is an innovative application that intersects blockchain technology with quantum computing and cryptographic security. Here's how you might approach this, leveraging Strawberry Fields and other technologies:

### 1. **Generating Seeds from Bitcoin Hashes:**
- **Hash Collection:** Collect Bitcoin mining hashes in real-time. Since you're interested in using all hashes (not just solved ones), you'll need access to mining pool data or a node that participates in the network to collect these hashes as they are generated.
- **Bundling Hashes:** Bundle these hashes in units of 100,000. This step could be done using a simple script that batches incoming hashes until the bundle size is reached, then uses this bundle to generate a seed.
- **Seed Generation:** Convert the bundled hashes into a format suitable for seeding an RNG. This might involve concatenating the hashes and applying a cryptographic hash function to generate a single seed value.

### 2. **Quantum Random Number Generation (QRNG):**
- **Strawberry Fields for QRNG:** While Strawberry Fields is primarily designed for simulating and optimizing quantum optics circuits, it can potentially be used to explore QRNG concepts. For instance, the inherent randomness in quantum measurements can be harnessed to generate random numbers.
- **Integration with Xanadu's Hardware:** For a truly quantum approach, you could explore using Xanadu's photonic quantum hardware for QRNG. This would involve submitting jobs to Xanadu's cloud platform, where quantum circuits designed for randomness generation are executed, and the measurement outcomes are used as random numbers.
- **API Development:** Develop an API that interfaces with Strawberry Fields or Xanadu's cloud platform to execute QRNG tasks on-demand, using the seeds generated from Bitcoin hashes. This API would stream the generated random numbers to clients without storing them.

### 3. **Streaming Service:**
- **Real-Time Streaming:** Implement a streaming protocol (e.g., WebSockets, Server-Sent Events) that allows clients to subscribe to the RNG service and receive random numbers in real-time.
- **Security Considerations:** Ensure the security and integrity of the streaming service. This includes secure transport (TLS/SSL), authentication of clients, and potentially rate-limiting to prevent abuse.
- **Privacy and Anonymity:** Since the service doesn't store hashes or random numbers, privacy is inherently protected. However, ensure that the service's design doesn't inadvertently leak information about clients or their use of the random numbers.

### 4. **Compliance and Ethical Considerations:**
- **Regulatory Compliance:** Depending on the application of the random numbers, ensure compliance with relevant regulations (e.g., online gambling laws, cryptographic standards).
- **Transparency and Auditability:** While the service doesn't store data, providing a mechanism for clients to verify the integrity and fairness of the generated random numbers (e.g., through public, verifiable quantum circuit designs) can build trust.

### 5. **Research and Collaboration:**
- **Engage with the Community:** Share your project with both the quantum computing and blockchain communities. Feedback and collaboration can drive innovation and identify potential applications.
- **Contribute to Strawberry Fields:** If your work leads to novel QRNG methods or improvements, consider contributing back to Strawberry Fields. The [development guide](https://strawberryfields.readthedocs.io/en/latest/development/research.html) provides information on how to contribute.

This project represents a unique blend of quantum computing, cryptography, and blockchain technology. It's ambitious and would require a solid understanding of these fields, as well as software development skills to implement the streaming service and ensure its security and reliability.